using System;
using System.Collections.Generic;
using System.Text;

namespace Classes
{
    public class Base : Interface1
    {
        public string Nome { get; set; }
        public int Idade { get; set; }

        public void MostrarTipo()
        {
            Console.WriteLine(this.GetType().Name);
        }

        public void MostraNome()
        {
            Console.WriteLine(Nome);
        }
    }
}
