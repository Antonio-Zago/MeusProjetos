using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            txtResult.Text = "ok";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FrmShow frm = new FrmShow();
            frm.label1.Text = txtResult.Text;
            frm.Show();
        }
    }
}
