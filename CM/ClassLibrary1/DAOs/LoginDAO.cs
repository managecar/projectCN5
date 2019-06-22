using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ClassLibrary1
{
    public class LoginDAO
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

        public string Login(string username, string password)
        {
            string role = "failed";
            try
            {
                conn = MyConnection.getConnection();
                con = new SqlConnection(conn);
                con.Open();
                cmd = new SqlCommand("LoginApp", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                rs = cmd.ExecuteReader();
                if (rs.Read())
                {
                    role = rs.GetString(0);
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                closeConnection();
            }
            return role;
        }

    }
}
