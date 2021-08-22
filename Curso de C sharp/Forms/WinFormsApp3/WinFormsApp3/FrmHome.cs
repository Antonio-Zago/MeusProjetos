using Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            List<Estado> lista = new List<Estado>();

            Estado estado1 = new Estado("SP",1000,"Brasil");
            lista.Add(estado1);
            Estado estado2 = new Estado("MG", 2000, "Brasil");
            lista.Add(estado2);
            Estado estado3 = new Estado("RJ", 3000, "Brasil");
            lista.Add(estado3);

            //Maneira simples de utilização
            //dataGridView.DataSource = lista; //Procura as propriedades do objeto para montar a tabela

            dataGridView.ColumnCount = 3;
            dataGridView.Columns[0].Name = "Nome Cidade";
            dataGridView.Columns[1].Name = "N° População";


            List<string[]> linhas = new List<string[]>();



            foreach(var a in lista)
            {
                string[] linha = new string[] {a.Nome, a.Populacao.ToString() };
                linhas.Add(linha);
            }

            foreach (string[] rowArray in linhas)
            {
                dataGridView.Rows.Add(rowArray);
            }
        }

        private void novoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmTexto frmTexto = new FrmTexto();

            frmTexto.Show();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
