using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using ClassLibrary1.DTOs;

namespace ClassLibrary1.DAOs
{
     public class BrandDAO
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

        public DataTable searchBrand(string search)
        {
            DataTable tb = new DataTable();
            try
            {
                conn = MyConnection.getConnection();
                con = new SqlConnection(conn);
                con.Open();
                cmd = new SqlCommand("SearchBrand", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BrandName", "%" + search + "%");
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

        public bool AddBrand(BrandDTO dto)
        {
            bool check = false;
            try
            {
                conn = MyConnection.getConnection();
                con = new SqlConnection(conn);
                con.Open();
                cmd = new SqlCommand("AddBrand", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BrandID", dto.BrandID1);
                cmd.Parameters.AddWithValue("@BrandName", dto.BrandName1);
                cmd.Parameters.AddWithValue("@Email", dto.Email1);
                cmd.Parameters.AddWithValue("@Address", dto.Address1);
                cmd.Parameters.AddWithValue("@Phone", dto.Phone1);
                cmd.Parameters.AddWithValue("@Note", dto.Note1);
                cmd.Parameters.AddWithValue("@DateContact", dto.DateContact1);
                check = cmd.ExecuteNonQuery() >0;
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            finally
            {
                closeConnection();
            }
            return check;
        }
    }
}
