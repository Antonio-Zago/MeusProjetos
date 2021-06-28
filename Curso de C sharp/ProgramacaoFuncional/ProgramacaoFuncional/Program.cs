using System;
using Tela;
using Classes;

namespace ProgramacaoFuncional
{
    class Program
    {

        static void Main(string[] args)
        {
             Menu.IniciarMenu();
           
            var teste = Cliente.LerClientes();
            Console.Read();
        }
    }
}
