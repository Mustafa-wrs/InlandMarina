using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using DataLayer;
//using System.Windows.Forms;

namespace InlandMarina
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (RegistrationDB.isCustomerExist(UserName.Text)) {
                lblFailed.Visible = true;
                return;
            }
            lblFailed.Visible = false;
            DataLayer.RegistrationDB.AddCustomer(FirstName.Text, LastName.Text, Phone.Text, City.Text, UserName.Text, Password.Text);
            lblSuccess.Visible = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null) {
                Session.Remove("UserName");
                Response.Redirect("default.aspx");
            }
        }  

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection connection = DataLayer.MarinaDB.GetConnection();
            string sql = "SELECT * FROM Customer WHERE UserName = @UserName";
            SqlCommand command = new SqlCommand(sql, connection);
            
            command.Parameters.AddWithValue("@UserName", UserNameR.Text);
            SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            if (reader.HasRows == false)
            {
                Label1.Text = "Username does not exist!";
            }
            else {
                while (reader.Read())
                {
                    if (PasswordR.Text == reader["Password"].ToString())
                    {
                        //Create a session
                        Session["UserName"] = reader["ID"].ToString();
                        //Assign customer id to the session
                        Response.Redirect("LeaseSlip.aspx");
                    }
                    else
                    {
                        //Label1.Text = "Password is invalid";                   
                    }
                }
            }
        }
    }
  }








