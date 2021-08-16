using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Text;

namespace POO2.Classes
{
    public class Usuario
    {

        public Usuario(string Nome, string Telefone, string Cpf)
        {
            nome = Nome;
            telefone = Telefone;
            cpf = Cpf;

        }
        public string nome { get; set; }
        public string telefone { get; set; }
        public string cpf { get; set; }

        public static List<Usuario> LerUsuarios()
        {
            string local = ConfigurationManager.AppSettings["LocalUsuarios"];
            List<Usuario> lista = new List<Usuario>();
            if (File.Exists(local))
            {
                try
                {
                    StreamReader stream = new StreamReader(local);
                    string linha;
                    string[] results;

                    while ((linha = stream.ReadLine()) != null)
                    {
                        results = linha.Split(";");
                        Usuario usuario = new Usuario(results[0], results[1], results[2]);
                        lista.Add(usuario);
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

        public static void GravarUsuario(Usuario usuario)
        {
            string local = ConfigurationManager.AppSettings["LocalUsuarios"];

            if (File.Exists(local))
            {
                try
                {
                    StreamWriter stream = new StreamWriter(local, true);

                    stream.WriteLine(usuario.nome + ";" + usuario.telefone + ";" + usuario.cpf + ";");

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
