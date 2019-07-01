using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace ClassLibrary1.DAOs
{
    public class CarDAO
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private SqlDataReader rs;
        private string conn;

        private void closeConnection()
        {
            if (rs != null)
            {
                rs.Close();
            }
            if (con != null)
            {
                con.Close();
            }
        }

        public DataTable searchCar(string search)
        {
            DataTable tb = new DataTable();
            try
            {
                conn = MyConnection.getConnection();
                con = new SqlConnection(conn);
                con.Open();
                cmd = new SqlCommand("SearchCar", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Search", "%" + search + "%");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(tb);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                closeConnection();
            }
            return tb;
        }
    }
}
