using System;
using System.Collections.Generic;
using System.Text;

namespace Calculo
{
    class CalculoTabuada
    {
        public static void CalcularTabuadaEscolha(int valor)
        {
            for (int a = 1; a <= 10; a++)
            {
                Console.WriteLine("{0} X {1} = {2}", valor, a, a * valor);
            }
        }
    }
}
