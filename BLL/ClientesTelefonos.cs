using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class ClientesTelefonos
    {
        public int Id { get; set; }
        public int ClienteId { get; set; }
        public string Tipo { get; set; }
        public string Telefono { get; set; }

        public ClientesTelefonos(int clienteId, string tipo, string telefono)
        {
            this.ClienteId = clienteId;
            this.Tipo = tipo;
            this.Telefono = telefono;
        }

        public ClientesTelefonos(string tipo, string telefono)
        {
            this.Tipo = tipo;
            this.Telefono = telefono;
        }

        public ClientesTelefonos()
        {

        }
    }
}
