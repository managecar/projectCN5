using ClassLibrary1;
using ClassLibrary1.DAOs;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace frms
{
    public partial class frmExport : Form
    {
        CustomerDAO cusDAO = new CustomerDAO();
        DataTable dt;
        public frmExport()
        {
            InitializeComponent();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }
        public void loadCusList()
        {
            dt = cusDAO.getCustomers();
            dgvCusList.DataSource = dt;
        }
        private void FrmExport_Load(object sender, EventArgs e)
        {
            loadCusList();
        }

        private void BtnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLogin frm = new frmLogin();
            frm.Show();
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {

        }
    }
}
