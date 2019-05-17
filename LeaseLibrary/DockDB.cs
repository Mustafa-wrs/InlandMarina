using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace LeaseLibrary
{
   public static class DockDB 
    {
        public static string dockname(int ID)
        {
            string Name = "";
            SqlConnection connection = MarinaDB.GetConnection();
            try
            {
                string sql = "select name from dock where ID = 3;";
                SqlCommand command = new SqlCommand(sql, connection);

                SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Name = reader["name"].ToString();
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
