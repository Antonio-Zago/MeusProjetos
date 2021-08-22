using System;
using System.Collections.Generic;
using System.Text;

namespace Classes
{
    public class Estado
    {
        public string Nome { get; set; }
        public int Populacao { get; set; }

        public string Pais { get; set; }

        public Estado(string nome, int populacao, string pais)
        {
            Nome = nome;
            Populacao = populacao;
            Pais = pais;
        }
    }
}
