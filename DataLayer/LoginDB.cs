using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DataLayer
{
    public class LoginDB
    {
        //public static List<Customer> GetPassword()
        //{

        //    SqlConnection connection = MarinaDB.GetConnection();
        //    List<Customer> results = new List<Customer>();
        //    try
        //    {

        //        string sql = "SELECT UserName FROM customer WHERE UserName='UserName.Text' and Password='Password.Text'";
        //        SqlCommand command = new SqlCommand(sql, connection);

        //        SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        //        while (reader.Read())
        //        {
        //            if(){

        //            }
                    
                    
        //            //Login s = new Login();
        //           // s.Password = reader["Password"].ToString();
        //            //if (Password.text == reader["password"].ToString())
        //            //{
        //            //welcome
        //            //}
        //            // else {
        //            //not welcome
        //            //}
        //            //s.StateName = reader["StateName"].ToString();
        //            //results.Add(s);


        //        }
        //    }


        //    catch
        //    {
        //    }
        //    finally { connection.Close(); }
        //    return results;
        //}




    }
}