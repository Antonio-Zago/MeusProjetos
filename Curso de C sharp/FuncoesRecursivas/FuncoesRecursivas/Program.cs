using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FuncoesRecursivas
{
    class Program
    {
        public static int cont = 1;

        static void Main(string[] args)
        {
            LerArquivo(); //Chama a função ler arquivo
            Console.Read();
        }

        public static void LerArquivo()
        {
            while (true)
            {
                string ArquivoTotal = @"C:\Users\DEV01\Desktop\MeusProjetos\C#\FuncoesRecursivas\arquivos\arq" + cont + ".txt";
                cont++;
                if (File.Exists(ArquivoTotal))
                {
                    StreamReader sr = new StreamReader(ArquivoTotal); //cria um novo objeto StreamReader

                    string linha;

                    while ((linha = sr.ReadLine()) != null) //Enquanto não acabar as linhas executa a rotina de ler a linha e colocar na tela
                    {
                        Console.WriteLine(linha);
                    }
                }
                else
                {
                    if (cont==2)
                    {
                        Console.WriteLine("Arquivo não encontrado");
                        break;
                    }
                    else
                    {
                        break;
                    }
                    
                }
            }
        }
    }
}
