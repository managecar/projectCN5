using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ClassLibrary1;

namespace frms
{
    public partial class frmLogin : Form
    {
        LoginDAO dao;
        public frmLogin()
        {
            InitializeComponent();
            dao = new LoginDAO();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string role = dao.Login(username, password);
                if (role.Equals("Import"))
                {
                    this.Hide();
                    frmImport frm = new frmImport();
                    frm.Show();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
