using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DataLayer
{
    public class RegistrationDB
    {

            public class Customer
            {
                public int ID { get; set; }
                public string FirstName { get; set; }
                public string LastName { get; set; }
                public int Phone { get; set; }
                public string City { get; set; }
            public string UserName { get; set; }
            public string Password { get; set; }
        }


            public static Customer GetCustomer(int ID)
            {

                SqlConnection connection = MarinaDB.GetConnection();

                Customer s = new Customer();
                try
                {

                    string sql = "SELECT ID, FirstName, LastName, Phone, City" +
                        " FROM Customer " +
                        " WHERE ID =" + ID;


                    SqlCommand command = new SqlCommand(sql, connection);
                    SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                    while (reader.Read())
                    {

                        s.FirstName = reader["FirstName"].ToString();
                        s.LastName = reader["LastName"].ToString();
                        s.Phone = Convert.ToInt32(reader["Phone"].ToString());
                        s.City = reader["City"].ToString();
                        s.ID = Convert.ToInt32(reader["ID"].ToString());


                    }
                    
                }


                catch (Exception ex)
                {
                }
                finally { connection.Close(); }
                return s;
            }


            public static void AddCustomer(string FirstName, string LastName, string Phone, string City)
            {
                string sql = "INSERT INTO Customer" +
                    " (FirstName, LastName, Phone, City) " +
                        " VALUES " +
                        "(@FirstName, @LastName, @Phone, @City)";

                SqlConnection connection = DataLayer.MarinaDB.GetConnection();
                SqlCommand command = new SqlCommand(sql, connection);

                command.Parameters.AddWithValue("@FirstName", FirstName);
                command.Parameters.AddWithValue("@LastName", LastName);
                command.Parameters.AddWithValue("@Phone", Phone);
                command.Parameters.AddWithValue("@City", City);


                command.ExecuteNonQuery();


            }

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
        //            Customer s = new Customer();
        //            s.Password = reader["Password"].ToString();
        //            if (Password.Text == reader["Password"].ToString()
        //            {
        //                welcome
        //            }
        //            else {
        //                not welcome
        //            }

                
            


                    
                     
                   
                   
        //            results.Add(s);


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
