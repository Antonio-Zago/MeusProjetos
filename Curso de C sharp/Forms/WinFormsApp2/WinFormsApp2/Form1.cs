using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            MessageBox.Show("Inicializando formulario pelo construtor");
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            List<string> lista = new List<string>() { "SP", "RJ","MG", "PA"};
            foreach (string a in lista)
            {
                comboBox1.Items.Add(a);
            }

            MessageBox.Show("Inicializando o formulario");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Estado selecionado: " + comboBox1.Text) ;
        }
    }
}
