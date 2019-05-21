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
        //string username = UserName.Text;

        public static Customer GetCustomer(int ID)
        {
            SqlConnection connection = MarinaDB.GetConnection();
            Customer s = new Customer();
            try
            {
                string sql = "SELECT ID, FirstName, LastName, Phone, City, UserName, Password" +
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
                    s.UserName = reader["UserName"].ToString();
                    s.Password = reader["Password"].ToString();
                    s.ID = Convert.ToInt32(reader["ID"].ToString());
                }
            }
            catch (Exception)
            {
                System.Windows.Forms.MessageBox.Show("Something went wrong while trying to connect to your database");
            }
            finally { connection.Close(); }
            return s;
        }


        public static void AddCustomer(string FirstName, string LastName, string Phone, string City, string UserName, string Password)
        {
            string sql = "INSERT INTO Customer" +
                " (FirstName, LastName, Phone, City, UserName, Password) " +
                    " VALUES " +
                    "(@FirstName, @LastName, @Phone, @City, @UserName, @Password)";

            SqlConnection connection = DataLayer.MarinaDB.GetConnection();
            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName", LastName);
            command.Parameters.AddWithValue("@Phone", Phone);
            command.Parameters.AddWithValue("@City", City);
            command.Parameters.AddWithValue("@UserName", UserName);
            command.Parameters.AddWithValue("@Password", Password);
            command.ExecuteNonQuery();
        }

        public static bool isCustomerExist(string username) {
            SqlConnection connection = DataLayer.MarinaDB.GetConnection();
            string sql = "SELECT * FROM Customer WHERE UserName = @UserName";
            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@UserName", username);
            SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            return reader.HasRows;
        }
    }
}


























