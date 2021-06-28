using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Configuration;

namespace Arquivos
{
    class LerArquvos
    {
        public static void LerArquivoDeTexto()
        {
            int cont = 0;
            string linha = "";
            while (true)
            {
                cont++;
                string local = ConfigurationManager.AppSettings["caminho_arquivos"] + "arq" + cont + ".txt";
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
                        Console.WriteLine(linha);
                    }
                }
            }


        }
    }
}
