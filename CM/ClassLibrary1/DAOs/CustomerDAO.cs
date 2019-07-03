using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1.DAOs
{
    public partial class CustomerDAO
    {
        private SqlConnection cnn = null;
        private SqlCommand cmd;
        private string con;
        public DataTable getCustomers()
        {
            con = MyConnection.getConnection();
            cnn = new SqlConnection(con);
            cmd = new SqlCommand("select * from ManageCar", cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tblCustomer = new DataTable();
            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open(); 
                }
                da.Fill(tblCustomer);

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                if (cnn != null) cnn.Close();
            }
            return tblCustomer;
        }

        public bool AddCustomer(CustomerDTO dto)
        {
            bool result;
            con = MyConnection.getConnection();
            cnn = new SqlConnection(con);
            cmd = new SqlCommand("AddCustomer", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Fullname", dto.Fullname);
            cmd.Parameters.AddWithValue("@Address", dto.Address);
            cmd.Parameters.AddWithValue("@Phone", dto.Phone);
            cmd.Parameters.AddWithValue("@Birthday", dto.Birthday);
            try
            {
                if(cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                result = cmd.ExecuteNonQuery() > 0;
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return result;
        }
        public bool UpdateCustomer(CustomerDTO dto)
        {
            bool result;
            con = MyConnection.getConnection();
            cnn = new SqlConnection(con);
            cmd = new SqlCommand("UpdateCustomer", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Fullname", dto.Fullname);
            cmd.Parameters.AddWithValue("@Address", dto.Address);
            cmd.Parameters.AddWithValue("@Phone", dto.Phone);
            cmd.Parameters.AddWithValue("@Birthday", dto.Birthday);
            try
            {
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                result = cmd.ExecuteNonQuery() > 0;
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return result;
        }
    }
}
