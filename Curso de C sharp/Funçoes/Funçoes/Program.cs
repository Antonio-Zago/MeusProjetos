using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Funçoes
{
    class Program
    {
        static void Main(string[] args)
        {
            //Local, tipo, retorno, nome
            //internal = proprio do namespace
            //private = proprio da classe

            Console.WriteLine(calcular()); //Chamando a função calcular
            MostrarMensagemNaTela(); //Chamando a função MostrarMensagemNaTela

            Console.WriteLine("Digite a tabuada que desaja ver: ");
            CalcularTabuada(Convert.ToInt32(Console.ReadLine())); //Pede um numero ao usuario e o readline o acomoda em uma string e é necessario a converção para int

            var a = new programa2(); //Instanciei um objeto a
            a.teste(); //A partir da instancia consegui chamar o método teste por não ser static

            programa2.teste2(); //A partir da classe chamei o método teste2 por ser static

            //Static = chama com a instância
            //Não static = chama com a classe

            Console.Read();

        }

        static int calcular() //public, static, int, nome
        {
            int a = 1;
            int b = 2;
            int c = a + b;
            return c;
        }

        public static void MostrarMensagemNaTela() //public, static, sem retorno, nome 
        {
            Console.WriteLine("Olá mundo");
        }

        static void CalcularTabuada(int a)
        {
            for(int i=1; i<=10; i++)
            {
                Console.WriteLine("{0} * {1} = {2}", a, i, a * i);
            }
        }
    }

    class programa2
    {
        public void teste()
        {
            Console.WriteLine("Olá mundo");
        }

        private void teste4()
        {
            Console.WriteLine("Olá mundo 2");
        }

        public static void teste2()
        {
            Console.WriteLine("Olá mundo 2");
        }

        private static void teste3()
        {
            Console.WriteLine("Olá mundo 2");
        }
    }
}
