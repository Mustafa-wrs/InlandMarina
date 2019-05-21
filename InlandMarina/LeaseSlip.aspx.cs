using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using LeaseLibrary;

namespace InlandMarina
{
    public partial class LeaseSlip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //redirect user to home page when not logged in
            if (Session["UserName"] == null) {
                Response.Redirect("default.aspx");
            }
            int customerID = Convert.ToInt32(Session["UserName"]);
            int LeasedSlipID = Convert.ToInt32(Session["LeasedSlipID"]);

            nameLbl.Text = DockDB.getCustomerInfoBy(customerID);

            if (Session["LeasedSlipID"] != null) {
                List<string> leaseInfo = new List<string>();

                //This is were you can choose the slip you want to display
                leaseInfo = DockDB.getSlipInfoBy(LeasedSlipID);

                //Dock name
                dockALbl.Text = leaseInfo[3];

                // Width X Length
                widthLengthLbl.Text = String.Format("{0} X {1}", leaseInfo[1], leaseInfo[2]);

                //Electric service
                if (Convert.ToBoolean(leaseInfo[4]))
                {
                    numSlipsLbl.Text = " Yes";
                }
                else
                {
                    numSlipsLbl.Text = " No";
                }

                //Water service
                if (Convert.ToBoolean(leaseInfo[5]))
                {
                    waterlbl.Text = " Yes";
                }
                else
                {
                    waterlbl.Text = " No";
                }
            }
           
            //Get all leased slips
            List<string> slipsLeased = new List<string>();

            slipsLeased = DockDB.getSlipsByCustomer(customerID);
            foreach (string slip in slipsLeased)
            {
                slipLeaseBox.Items.Add(slip);
            }
        }
    }
}