using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Configuration;
using POO2.Classes;

namespace POO2
{
    public class Cliente
    {
        public Cliente(string Nome, string Telefone, string Cpf) {
            nome = Nome;
            telefone = Telefone;
            cpf = Cpf;

        }
        public string nome { get; set; }
        public string telefone { get; set; }
        public string cpf { get; set; }

        public static List<Cliente> LerClientes()
        {
            string local = ConfigurationManager.AppSettings["LocalClientes"];
            List<Cliente> lista = new List<Cliente>();
            if (File.Exists(local))
            {
                try
                {
                    StreamReader stream = new StreamReader(local);
                    string linha;
                    string[] results;

                    while ((linha = stream.ReadLine())!= null)
                    {
                        results = linha.Split(";");
                        Cliente cliente = new Cliente(results[0], results[1], results[2]);
                        lista.Add(cliente);
                    }

                    stream.Close();


                }
                catch
                {
                    Console.WriteLine("Falha ao tentar abrir o arquivo!");
                }
            }
            else
            {
                Console.WriteLine("Local do arquivo não encontrado!");
            }

            

            return lista;
        }

        public static void GravarCliente(Cliente cliente)
        {
            string local = ConfigurationManager.AppSettings["LocalClientes"];

            if (File.Exists(local))
            {
                try
                {
                    StreamWriter stream = new StreamWriter(local, true);

                    stream.WriteLine(cliente.nome + ";" + cliente.telefone + ";" + cliente.cpf + ";");

                    stream.Close();
                }
                catch
                {
                    Console.WriteLine("Falha ao tentar abrir o arquivo!");
                }
            }
            else
            {
                Console.WriteLine("Local do arquivo não encontrado!");
            }
        }

    }
}
