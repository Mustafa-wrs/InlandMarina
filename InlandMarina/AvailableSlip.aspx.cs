using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using BSLibrary;

namespace InlandMarina
{
    public partial class AvailableSlip : System.Web.UI.Page
    {
        public List<Dock> docks = new List<Dock>();
        protected void Page_Load(object sender, EventArgs e)
        {
            docks = Operations.getDocks();
            if (!IsPostBack)
            {
                Repeater1.DataSource = docks;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Dock dock = (Dock)e.Item.DataItem;
                DropDownList dropDown = (DropDownList)e.Item.FindControl("DropDownList1");
                for (int i = 0; i < dock.slips.Count; i++) {
                    string itemContent = String.Format("Slip{0} - {1} x {2}", dock.slips[i].id, dock.slips[i].width, dock.slips[i].length);
                    ListItem item = new ListItem(itemContent, dock.slips[i].id.ToString());
                    dropDown.Items.Insert(i, item);
                }
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (!Operations.customerIsLoggedIn()) {
                Response.Redirect("\\Registration.aspx", true);
                return;
            }
            var item = e.Item;
            //lblResult2.Text = (item.FindControl("DropDownList1") as DropDownList).SelectedValue;
            int slipID = Convert.ToInt32((item.FindControl("DropDownList1") as DropDownList).SelectedValue);
            if (Operations.LeaseSlip(slipID, 1)) {
                lblResult2.Text = "Transaction succeeded";
                Response.Redirect("\\LeaseSlip.aspx", true);
            } else
            {
                lblResult2.Text = "Transaction failed";
            }
        }
    }
}