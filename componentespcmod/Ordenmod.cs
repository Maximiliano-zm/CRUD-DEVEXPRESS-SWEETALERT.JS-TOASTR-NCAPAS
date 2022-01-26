using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace componentespcmod
{
   public class Ordenmod
    {

        private int numeroorden;
        private DateTime fecha;
        private int idcomponente;


        public Ordenmod()
        {
        }

        public Ordenmod(int numeroorden, DateTime fecha, int idcomponente)
        {
            this.numeroorden = numeroorden;
            this.fecha = fecha;
            this.idcomponente = idcomponente;
        }

        public int Numeroorden { get => numeroorden; set => numeroorden = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public int Idcomponente { get => idcomponente; set => idcomponente = value; }
    }
}
