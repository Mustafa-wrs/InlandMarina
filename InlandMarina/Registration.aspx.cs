using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace InlandMarina
{
    public partial class Registration : System.Web.UI.Page
    {



        protected void Button2_Click1(object sender, EventArgs e)
        {
            DataLayer.RegistrationDB.AddCustomer(FirstName.Text, LastName.Text, Phone.Text, City.Text);
        }





        protected void Page_Load(object sender, EventArgs e)
        {
        }

            //private void button1_Click(object sender, EventArgs e)
            //{

            
            //}

        //    private void button2_Click(object sender, EventArgs e)
        //    {
        //    DataLayer.RegistrationDB.AddCustomer(FirstName.Text, LastName.Text, Phone.Text, City.Text);
        //}

        protected void Login_Click(object sender, EventArgs e)
        {
            //int ID = Convert.ToInt32(Password.Text);
            //Customer who = new Customer();
            //who = InlandMarina.Registration.GetCustomer(ID);

            ////lblCustomerID.Text = who.CustomerID.ToString();
            //FirstName.Text = who.FirstName;
        }

        
    }

    //protected void Page_Load(object sender, EventArgs e)
    //    {


    //    }

    //public static List<ID> GetID()
    //{

    //    SqlConnection connection = Registration.GetConnection();
    //    List<ID> results = new List<ID>();
    //    try
    //    {

    //        string sql = "SELECT *, FROM Customer WHERE ID =s";
    //        SqlCommand command = new SqlCommand(sql, connection);

    //        SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
    //        while (reader.Read())
    //        {
    //            State s = new State();
    //            s.StateCode = reader["StateCode"].ToString();
    //            if (textbox2.text == reader["password"].ToString())
    //            {
    //                //welcome
    //            }
    //            else
    //            {
    //                //not welcome
    //            }
    //            s.StateName = reader["StateName"].ToString();
    //            results.Add(s);


    //        }
    //    }


    //    catch
    //    {
    //    }
    //    finally { connection.Close(); }
    //    return results;


  }








