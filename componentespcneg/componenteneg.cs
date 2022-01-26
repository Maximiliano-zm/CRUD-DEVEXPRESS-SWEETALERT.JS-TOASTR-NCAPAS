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
   public class componenteneg
    {
        //Obtenerdatos

        public static List<Componentemod> ListarComponente()
        {

            List<Componentemod> componente = new List<Componentemod>();
            DataTable datatable = componentedal.ListarComponente();

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

        //Eliminar
        public static void EliminarComponente(int idcomponente, out int codigo, out string mensaje)
        {
            try
            {
                componentedal.EliminarComponente(idcomponente, out codigo, out mensaje);
            }
            catch (Exception e)
            {

                codigo = -1;
                mensaje = e.Message;
            }
        }

        public static void GuardarActualizar(int Idcomponente, string Nombrecomponente, int Cantidad, string Marca, float Precio, string Detalle, float Total, int Numerorden, out int codigo, out string mensaje)
        {
            try
            {
                componentedal.CrearComponente(Idcomponente,Nombrecomponente,Cantidad,Marca,Precio,Detalle,Numerorden,out codigo , out mensaje);
            }
            catch (Exception e)
            {
                codigo = -1;
                mensaje = e.Message;
            }

        }




    }
}
