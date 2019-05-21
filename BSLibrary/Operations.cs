using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DBLibrary;
using System.Data.SqlClient;
using System.Web;

namespace BSLibrary
{
     public static class Operations
    {
        public static List<Dock> getDocks() {
            DataTable dt = DB.getRows("SELECT ID, Name, WaterService, ElectricalService FROM Dock");
            List<Dock> docks = new List<Dock>();
            foreach (DataRow dr in dt.Rows)
            {
                int id = (int)dr["ID"];
                string name = dr["Name"].ToString();
                bool waterService = (bool)dr["WaterService"];
                bool electricalService = (bool)dr["ElectricalService"];
                List<Slip> slips = getAvailableSlips(id);
            
                Dock dock = new Dock(id, name, waterService, electricalService, slips);
                docks.Add(dock);
            }
            return docks;
        }

        public static bool LeaseSlip(int slipID, int CustomerID) {
            string sql = "INSERT INTO Lease (SlipID, CustomerID) VALUES (@slipID, @customerID)";
            SqlCommand command = new SqlCommand(sql);
            command.Parameters.AddWithValue("@slipID", slipID);
            command.Parameters.AddWithValue("@customerID", CustomerID);
            return DB.insertRow(command);
        }

        private static List<Slip> getAvailableSlips(int dockID) {
            string sql = "SELECT s.ID, s.Width, s.Length ";
            sql += "FROM Slip as s ";
            sql += "left Join Lease as l on l.SlipID = s.ID ";
            sql += "WHERE l.SlipID is NULL AND s.DockID = " + dockID.ToString();
            DataTable dt = DB.getRows(sql);
            List<Slip> slips = new List<Slip>();
            foreach (DataRow dr in dt.Rows)
            {
                int id = (int)dr["ID"];
                int width = (int)dr["Width"];
                int length = (int)dr["Length"];

                Slip slip = new Slip(id, width, length);
                slips.Add(slip);
            }
            return slips;
        }

        public static bool customerIsLoggedIn() {
            return HttpContext.Current.Session["UserName"] != null;
        }
    }
}