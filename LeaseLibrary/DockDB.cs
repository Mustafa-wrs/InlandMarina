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
        public static List<string> getSlipInfoBy(int ID)
        {
            List<string> result = new List<string>();
            SqlConnection connection = MarinaDB.GetConnection();
            try
            {
                string sql = "SELECT s.ID, s.Length, s.Width, d.Name, d.ElectricalService, d.WaterService ";
                sql += "FROM Slip s ";
                sql += "JOIN DOCK d on s.DockID = d.ID ";
                sql += "WHERE s.ID = " + ID;

                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    result.Add(reader["ID"].ToString()); //0
                    result.Add(reader["Length"].ToString());//1
                    result.Add(reader["Width"].ToString());//2
                    result.Add(reader["Name"].ToString()); //3
                    result.Add(reader["ElectricalService"].ToString()); //4
                    result.Add(reader["WaterService"].ToString());//5
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public static string getCustomerInfoBy(int ID)
        {
            String customerName = "";
            SqlConnection connection = MarinaDB.GetConnection();
            try
            {
                string sql = "SELECT FirstName + ' ' + LastName as FullName ";
                sql += "FROM Customer WHERE ID = " + ID;

                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    customerName = reader["FullName"].ToString();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                connection.Close();
            }
            return customerName;
        }

        public static List<string> getSlipsByCustomer(int ID)
        {
            List<string> result = new List<string>();
            SqlConnection connection = MarinaDB.GetConnection();
            try
            {
                string sql = "SELECT SlipID FROM Lease WHERE CustomerID = " + ID;

                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    result.Add(reader["SlipID"].ToString());
                }
            }
            catch (Exception ex)
            {
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
