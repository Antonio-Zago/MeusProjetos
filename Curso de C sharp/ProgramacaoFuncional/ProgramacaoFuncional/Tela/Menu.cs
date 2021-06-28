using System;
using System.Collections.Generic;
using System.Text;
using Calculo;
using Arquivos;

namespace Tela
{
    class Menu
    {

        public const int SAIDA_PROGRAMA = 0;
        public const int LER_ARQUIVOS = 1;
        public const int TABUADA = 2;
        public const int CALCULAR_MEDIA = 3;
        public static void IniciarMenu()
        {
            int ValorTabuada;

            while (true)
            {
                string mensagem = "Menu" +
                "\n" +
                "Digite uma das opções: " +
                "\n" +
                "Sair do programa --> 0" +
                "\n" +
                "Ler arquivos --> 1" +
                "\n" +
                "Tabuada --> 2" +
                "\n" +
                "Calcular média -->3";

                Console.WriteLine(mensagem);
                int valor = Convert.ToInt32(Console.ReadLine());

                if (valor == SAIDA_PROGRAMA)
                {
                    break;
                }
                else if (valor == LER_ARQUIVOS)
                {
                    LerArquvos.LerArquivoDeTexto();
                }
                else if (valor == TABUADA)
                {
                    Console.WriteLine("Digite o valor da tabuada: ");
                    ValorTabuada = Convert.ToInt32(Console.ReadLine());

                    CalculoTabuada.CalcularTabuadaEscolha(ValorTabuada);
                }
                else if (valor == CALCULAR_MEDIA)
                {
                    Console.WriteLine("Digite o valor 1: ");
                    int a = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Digite o valor 2: ");
                    int b = Convert.ToInt32(Console.ReadLine());

                    Media.CalcularMediaAluno(a, b);
                }
                else
                {
                    Console.WriteLine("Valor digitado inválido");
                }
            }
        }
    }
}
