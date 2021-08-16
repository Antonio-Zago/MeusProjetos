using POO2.Classes;
using System;
using System.Collections.Generic;
using static POO2.Cliente;

namespace POO2
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Cliente> listaDeClientes = new List<Cliente>();
            List<Usuario> listaDeUsuarios = new List<Usuario>();

            Cliente u1 = new Cliente("Bruno", "12543543", "4356365");
            Usuario a1 = new Usuario("Antonio", "64776754", "745314");

            listaDeClientes = Cliente.LerClientes();
            listaDeUsuarios = Usuario.LerUsuarios();

            Cliente.GravarCliente(u1);
            Usuario.GravarUsuario(a1);
        }
    }
}
