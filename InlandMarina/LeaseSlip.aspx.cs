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
            nameLbl.Text = CustomerDB.CustomerName(8);


            //string DockA = "Dock A";
            dockALbl.Text = DockDB.dockname(1); 

            string DockB = "xman";
            dockBLbl.Text = DockB;

            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    connection.Open();
            //    // Do work here; connection closed on following line.  
            //}



        }
    }
}