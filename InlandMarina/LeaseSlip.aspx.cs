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

            //string Name = " Amin Aden";
            nameLbl.Text = CustomerDB.CustomerName(3);

            List<string> leaseInfo = new List<string>();
            leaseInfo = DockDB.getSlipBy(50);

            //string DockA = "Dock A";
            dockALbl.Text = leaseInfo[3]; //DockDB.dockname(1); 

            //string DockB = "xman";
            dockBLbl.Text = leaseInfo[2];
            if (Convert.ToBoolean(leaseInfo[4]))
            {
                numSlipsLbl.Text = "Yes";
            }
            else {
                numSlipsLbl.Text = "No";
            }
            numSlipsLbl.Text = leaseInfo[4];
            

            waterlbl.Text = leaseInfo[5];



            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    connection.Open();
            //    // Do work here; connection closed on following line.  
            //}



        }
    }
}