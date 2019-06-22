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

namespace frms
{
    public partial class frmImport : Form
    {
        public frmImport()
        {
            InitializeComponent();
            btnAdd.BackColor = Color.Purple;
            btnAdd.ForeColor = Color.White;
            
        }
        
        
        private void TcImport_DrawItem(object sender, DrawItemEventArgs e)
        {
            Graphics g = e.Graphics;
            TabPage tp = tcImport.TabPages[e.Index];

            StringFormat sf = new StringFormat();
            sf.Alignment = StringAlignment.Center;  //optional

            // This is the rectangle to draw "over" the tabpage title
            RectangleF headerRect = new RectangleF(e.Bounds.X, e.Bounds.Y + 2, e.Bounds.Width, e.Bounds.Height - 2);

            // This is the default colour to use for the non-selected tabs
            SolidBrush sb = new SolidBrush(Color.Transparent);

            // This changes the colour if we're trying to draw the selected tabpage
            if (tcImport.SelectedIndex == e.Index)
                sb.Color = Color.Purple;

            // Colour the header of the current tabpage based on what we did above
            g.FillRectangle(sb, e.Bounds);

            //Remember to redraw the text - I'm always using black for title text
            g.DrawString(tp.Text, tcImport.Font, new SolidBrush(Color.RosyBrown), headerRect, sf);
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLogin frm = new frmLogin();
            frm.Show();
        }
    }
}
