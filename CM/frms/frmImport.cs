using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Media;
using Color = System.Drawing.Color;
using ClassLibrary1;
using ClassLibrary1.DAOs;

namespace frms
{
    public partial class frmImport : Form
    {
        CarDAO carDao;
        public frmImport()
        {
            InitializeComponent();
            carDao = new CarDAO();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void toolStripLabel5_Click(object sender, EventArgs e)
        {
            string search = txtSearchCar.Text;
            DataTable tb = carDao.searchCar(search);
            BindingSource bdS = new BindingSource();
            bdS.DataSource = tb;
            dgvCar.DataSource = bdS;
            bdNavCar.BindingSource = bdS;
        }
    }
}
