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
using ClassLibrary1.DTOs;

namespace frms
{
    public partial class frmImport : Form
    {
        CarDAO carDao;
        BrandDAO brandDao;
        public frmImport()
        {
            InitializeComponent();
            carDao = new CarDAO();
            brandDao = new BrandDAO();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void btShipmentSave_Click(object sender, EventArgs e)
        {

        }

        private void btSaveBrand_Click(object sender, EventArgs e)
        {
            string BrandID = txtBrandID.Text;
            string BrandName = txtBrandName.Text;
            string DateContact = txtBrandDate.Text;
            string Email = txtBrandEmail.Text;
            string Address = txtBrandAddress.Text;
            string Phone = txtBrandPhone.Text;
            string Note = txtBrandNote.Text;
            BrandDTO b = new BrandDTO(BrandID,BrandName,Email,Address,Phone,Note, DateTime.Parse(DateContact));
            if (brandDao.AddBrand(b))
            {
                MessageBox.Show("Saved");
            }
            else
            {
                MessageBox.Show("Failed");
            }
        }

        private void btSearchCar_Click(object sender, EventArgs e)
        {
            string search = txtSearchCar.Text;
            DataTable tb = carDao.searchCar(search);
            BindingSource bdS = new BindingSource();
            bdS.DataSource = tb;
            dgvCar.DataSource = bdS;
            bdNavCar.BindingSource = bdS;
        }

        private void btSearch_Click(object sender, EventArgs e)
        {
            string search = txtSearchBrand.Text;
            DataTable tb = brandDao.searchBrand(search);
            BindingSource bdS = new BindingSource();
            bdS.DataSource = tb;
            txtBrandAddress.DataBindings.Clear();
            txtBrandEmail.DataBindings.Clear();
            txtBrandID.DataBindings.Clear();
            txtBrandName.DataBindings.Clear();
            txtBrandNote.DataBindings.Clear();
            txtBrandPhone.DataBindings.Clear();
            txtBrandDate.DataBindings.Clear();
            txtBrandAddress.DataBindings.Add("Text", bdS, "Address");
            txtBrandEmail.DataBindings.Add("Text", bdS, "Email");
            txtBrandID.DataBindings.Add("Text", bdS, "BrandID");
            txtBrandName.DataBindings.Add("Text", bdS, "BrandName");
            txtBrandNote.DataBindings.Add("Text", bdS, "Note");
            txtBrandPhone.DataBindings.Add("Text", bdS, "Phone");
            txtBrandDate.DataBindings.Add("Text", bdS, "DateContact");
            dgvBrand.DataSource = bdS;
            bdNavBrand.BindingSource = bdS;
        }

        private void btAddNew_Click(object sender, EventArgs e)
        {
            txtBrandAddress.Clear();
            txtBrandEmail.Clear();
            txtBrandID.Clear();
            txtBrandName.Clear();
            txtBrandNote.Clear();
            txtBrandPhone.Clear();
        }
    }
}
