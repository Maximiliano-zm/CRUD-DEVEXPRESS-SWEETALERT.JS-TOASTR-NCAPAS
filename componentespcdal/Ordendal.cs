using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace componentespcdal
{
   public class Ordendal
    {

        #region LISTAR


        public static DataTable ListarOrden()
        {


            DataTable datacomponente = new DataTable();

            using (var conex = Conexion.ConectarConnection())
            {
                SqlCommand comando = new SqlCommand("ListaOrden", conex);
                comando.CommandType = CommandType.StoredProcedure;
                conex.Open();
                SqlDataAdapter adp = new SqlDataAdapter(comando);
                adp.Fill(datacomponente);
                adp.Dispose();
                conex.Close();

                return datacomponente;

            }

            
        }


        #endregion



    }
}
