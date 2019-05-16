using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace InlandMarina
{
    public partial class LeaseSlip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Name =" Amin Aden";
            nameLbl.Text = Name;

            
            string DockA = "Dock A";
            dockALbl.Text = DockA;

            string DockB = "Dock B";
            dockBLbl.Text = DockB;

            //using (SqlConnection connection = new SqlConnection(connectionString))
            //{
            //    connection.Open();
            //    // Do work here; connection closed on following line.  
            //}



        }
    }
}