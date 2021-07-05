using ExemploApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExemploApi.Controllers
{
    public class ClientesController : ApiController
    {
        private static List<Cliente> clientes= new List<Cliente>();

        [HttpGet]
        public List<Cliente> ListaClientes()
        {
            return clientes; 
        }
    }
}
