using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace DBLibrary
{
    public static class DB
    {
        private static SqlConnection Connect() {
            string connectionString = ConfigurationManager.ConnectionStrings["mustafaConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }

        public static DataTable getRows(string sql) {
            SqlConnection connection = Connect();
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataReader reader = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            return dataTable;
        }

        public static bool insertRow(SqlCommand command) {
            SqlConnection connection = Connect();
            command.Connection = connection;
            return (command.ExecuteNonQuery() > 0);
        }
    }
}
