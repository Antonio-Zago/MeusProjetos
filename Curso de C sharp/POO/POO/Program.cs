using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Classes;

namespace POO
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Pessoas> Lista = new List<Pessoas>();
            Lista = Pessoas.LerRegistros(); //Retorna uma lista de objetos
            Pessoas p1 = new Pessoas { Nome = "Antonio", Cpf = "462791", Telefone = "3424324" }; //Criando construtores a partir da instancia

            p1.Gravar();

        }
    }
}
