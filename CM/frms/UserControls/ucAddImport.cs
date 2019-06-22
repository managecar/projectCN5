using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace frms
{
    public partial class ucAddImport : UserControl
    {
        public ucAddImport()
        {
            InitializeComponent();
        }

        private void BtnClear_Click(object sender, EventArgs e)
        {
            txtImportID.Clear();
            txtQuantity.Clear();
            txtDate.Clear();
            txtNotes.Clear();
        }
        
    }
}
