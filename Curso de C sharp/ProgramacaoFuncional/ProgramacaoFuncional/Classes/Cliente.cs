using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Text;

namespace Classes
{
    public class Cliente
    {
        public string Nome; //Definindo os atributos da classe
        public string Telefone;
        public string Cpf;

        public static List<Cliente> LerClientes() //Static pq quero retornar a lista de todos os clientes, portanto é um método de classe
        {
            List<Cliente> Clientes = new List<Cliente>();

            int cont = 0;
            string linha = "";
            while (true)
            {
                cont++;
                string local = ConfigurationManager.AppSettings["base_clientes"];
                if (!(File.Exists(local)) && cont == 1)
                {
                    Console.WriteLine("Arquivo não encontrado");
                    break;
                }
                else if (!(File.Exists(local)))
                {
                    break;
                }
                else
                {
                    TextReader Arquivo = new StreamReader(local);
                    while ((linha = Arquivo.ReadLine()) != null)
                    {
                        var CaracPessoa = linha.Split(';'); //Cria um array separado por ;

                        Cliente Pessoa = new Cliente();

                        Pessoa.Nome = CaracPessoa[0];
                        Pessoa.Telefone = CaracPessoa[1];
                        Pessoa.Cpf = CaracPessoa[2];
                        Clientes.Add(Pessoa);
                    }
                }
            }

            return Clientes;
        }

        public void GravarCliente() //Método de instancia pq não é static
        {
            //todo
        }
    }
}
