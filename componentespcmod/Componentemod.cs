using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace componentespcmod
{
    public class Componentemod
    {

        private int idcomponente;
        private string nombrecomponente;
        private int cantidad;
        private string marca;
        private float precio;
        private string detalle;
        private float total;
        private int numerorden;



        public Componentemod()
        {
        }


        public Componentemod(int idcomponente, string nombrecomponente, int cantidad, string marca, float precio, string detalle, float total, int numerorden)
        {
            this.idcomponente = idcomponente;
            this.nombrecomponente = nombrecomponente;
            this.cantidad = cantidad;
            this.marca = marca;
            this.precio = precio;
            this.detalle = detalle;
            this.total = total;
            this.numerorden = numerorden;
        }

        public int Idcomponente { get => idcomponente; set => idcomponente = value; }
        public string Nombrecomponente { get => nombrecomponente; set => nombrecomponente = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public string Marca { get => marca; set => marca = value; }
        public float Precio { get => precio; set => precio = value; }
        public string Detalle { get => detalle; set => detalle = value; }
        public float Total { get => total; set => total = value; }
        public int Numerorden { get => numerorden; set => numerorden = value; }
    }
}
