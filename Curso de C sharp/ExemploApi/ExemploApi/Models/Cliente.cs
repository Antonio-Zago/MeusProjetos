using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExemploApi.Models
{
    public class Cliente
    {
        public string Nome { get; set; }

        //Construtor da classe 
        public Cliente(string nome)
        {
            this.Nome = nome;
        }
    }
}