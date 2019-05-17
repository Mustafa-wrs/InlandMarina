using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace LeaseLibrary
{ 
    public static class MarinaDB
    {
        public static SqlConnection GetConnection()
        {
            SqlConnection connection = new SqlConnection();
            string ConnectionString = ConfigurationManager.ConnectionStrings["mustafaConnection"].ConnectionString;
            connection.ConnectionString = ConnectionString;
            connection.Open();
            return connection;

        }
       
        }


}
