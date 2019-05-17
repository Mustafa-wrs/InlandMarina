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

        public static List<string> getSlipBy(int ID)
        {
            List<string> result = new List<string>();
            SqlConnection connection = MarinaDB.GetConnection();
            try
            {
                string sql = "select s.ID, s.Width, s.Length, d.Name, d.ElectricalService, d.WaterService ";
                sql += "from Slip s ";
                sql += "join Dock d on s.DockID = d.ID ";
                sql += "WHERE s.ID = " + ID;
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    result.Add(reader["ID"].ToString()); //0
                    result.Add(reader["Width"].ToString()); //1
                    result.Add(reader["Length"].ToString());
                    result.Add(reader["Name"].ToString());
                    result.Add(reader["ElectricalService"].ToString());
                    result.Add(reader["WaterService"].ToString());
                }
            }
            catch (Exception ex) {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                connection.Close();
            }
            return result;
        }
    }
}
