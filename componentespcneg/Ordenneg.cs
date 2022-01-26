using componentespcdal;
using componentespcmod;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace componentespcneg
{
    public class Ordenneg
    {
        public static List<Componentemod> ListarOrden()
        {
            List<Ordenmod> orden = new List<Ordenmod>();
            List<Componentemod> componente = new List<Componentemod>();
            DataTable datatable = Ordendal.ListarOrden();
            foreach (DataRow fila in datatable.Rows)
            {
                componente.Add(new Componentemod(Convert.ToInt32(fila[0]), //int
                    Convert.ToString(fila[1]),  //string
                    Convert.ToInt32(fila[2]),   //int
                    Convert.ToString(fila[3]),  //string
                    Convert.ToSingle(fila[4]),  //float
                    Convert.ToString(fila[5]),  //string
                    Convert.ToSingle(fila[6]),  //float
                    Convert.ToInt32(fila[7]))); //int


            }

            return componente;

        }



    }
}
