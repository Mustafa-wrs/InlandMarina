using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace LeaseLibrary
{
    public static class CustomerDB
    {
        public static string CustomerName(int ID)
        {
            string Name = "";
            //string Lastname = "";
            SqlConnection connection = MarinaDB.GetConnection();
            try
            {
                string sql = " select FirstName, LastName FROM Customer where ID = 3; ";
                SqlCommand command = new SqlCommand(sql, connection);

                SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Name = reader["FirstName"].ToString() + " " + reader["LastName"].ToString();
                }
            }
            catch (Exception ex) { }
            finally
            {
                connection.Close();
            }
            return (Name);

        }
    }
}
