using Classes;
using System;

namespace Interface
{
    class Program
    {

        public abstract class Animal // Classe abstrata obriga a sobscrever métodos com assinatura abstract
        {
            public string Coleira;
            public string Pelo;

            public abstract void Latir(); //Método que é obrigada a implementeação em classes que erdam de animal

            public void Correr()
            {
                Console.WriteLine("Correr");
            }


        }

        public class Cachorro : Animal
        {

            private string nome = "Mel";
            public string nome2 {  //Propriedade apenas com get
                get 
                {
                    return nome;
                } 
            }
            public override void Latir()
            {
               //Implementação obrigatória 
            }
        }

        sealed class Teste //Classe onde é impossivel erdar
        {

        }

        partial class teste2 //partial junta as classes com o msm nome
        {
            public int idade;
        }

        partial class teste2
        {
            public string Nome;
        }

        static void Main(string[] args)
        {
            Cliente cliente = new Cliente() { Nome = "Antonio", Idade = 21};
            Usuario usuario = new Usuario() { Nome = "Italo", Idade = 30 };

            cliente.MostraNome();

            cliente.MostrarTipo();
            usuario.MostrarTipo();

            Cachorro c1 = new Cachorro();

            Console.WriteLine(c1.nome2);

            teste2 t = new teste2();

            t.Nome = "Antonio";
            t.idade = 21;
            
        }
    }
}
