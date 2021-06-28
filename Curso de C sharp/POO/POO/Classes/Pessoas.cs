using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace Classes
{
    public class Pessoas
    {
        public string Nome;
        public string Cpf;
        public string Telefone;


        /// <summary>
        /// Documentação
        /// </summary>
        public Pessoas(string cpf) //Método construtor da classe, está com o msmo nome
        { //Determina que tem que setar um valor para cpf na criação

            this.Nome = "Valor padrão"; //Valor padrão para criação de qualquer objeto
            this.Cpf = cpf; 
        }

        /// <summary>
        /// Construtor sem parametro
        /// </summary>
        public Pessoas() 
        {
            //Construtor sem parametro
        }

        public Pessoas(string nome, string cpf) //o c# permite a criação de outros métodos com o mesmo nome desde que a assinatura seja diferente, ou seja os parametros
        {

        }

        public void Gravar()
        {
            FileStream stream = null;
            stream = new FileStream(@"C:\Users\DEV01\Desktop\MeusProjetos\C#\POO\Registros.txt", FileMode.OpenOrCreate);

            List<Pessoas> p1 = new List<Pessoas>();
            p1.Add(this);

            try
            {
                StreamWriter writer = new StreamWriter(@"C:\Users\DEV01\Desktop\MeusProjetos\C#\POO\Registros.txt");
                foreach (Pessoas c in p1)
                {
                    writer.WriteLine(c.Nome);
                }
            }
            catch
            {
                Console.WriteLine("deu mer");
            }

        }

        public static List<Pessoas> LerRegistros()
        {
            string[] carac = new string[3];
            List < Pessoas > ListaPessoas = new List<Pessoas>();
            while (true)
            {
                string Local = @"C:\Users\DEV01\Desktop\MeusProjetos\C#\POO\Registros.txt";
                if (File.Exists(Local))
                {
                    try
                    {
                        StreamReader Arquivo = new StreamReader(Local);

                        string linha;

                        while ((linha = Arquivo.ReadLine()) != null)
                        {
                            carac = linha.Split(';');

                            Pessoas Pessoa = new Pessoas {Nome= carac[0], Cpf = carac[1], Telefone = carac[2] };
                            ListaPessoas.Add(Pessoa);
                        }
                        Arquivo.Close();
                    }
                    catch
                    {
                        Console.WriteLine("Não foi possivel conectar com o arquivo especificado!!!");
                    }
                }
                else
                {
                    Console.WriteLine("Arquivo inexistente!!!");
                    break;
                }
                break;

            }

            return ListaPessoas;
        }
            
    }
}
