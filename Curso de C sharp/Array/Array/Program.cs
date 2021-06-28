using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array
{
    class Program
    {
        static void Main(string[] args)
        {
            //Array
            string[] s = new string[3]; //Criando uma array de 3 posições
                                        //É necessario determinar o numero de espaçoes de uma array

            s[0] = "Antonio"; //Atribuido valores as posições do Array
            s[1] = "Andreia";
            s[2] = "Adelino";


            //Listar dados do array
            foreach(string i in s)
            {
                Console.WriteLine(i);
            }


            //Collection
            List<string> a = new List<string>(); //Criação de uma Lista

            a.Add("Antonio"); //Adicionar elementos
            a.Add("Roberto");
            a.Add("Almeida");

            foreach (string i in a)
            {
                Console.WriteLine(i);
            }


        }
    }
}
