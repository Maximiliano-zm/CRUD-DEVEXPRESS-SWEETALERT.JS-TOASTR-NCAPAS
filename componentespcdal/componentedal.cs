using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace componentespcdal
{
    public class componentedal
    {
   //LISTAR
        #region LISTAR

        public static DataTable ListarComponente()
        {

            DataTable datacomponente = new DataTable();

            using (var conex = Conexion.ConectarConnection())
            {
                SqlCommand comando = new SqlCommand("Listacomponente", conex);
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
    //Eliminar
        #region ELIMINAR

        public static DataTable EliminarComponente(int idcomponente, out int codigo, out string mensaje)
        {

            DataTable dataProducto = new DataTable();


            using (var conexion = Conexion.ConectarConnection())
            {

                try
                {
                    SqlCommand comando = new SqlCommand("EliminarComponente", conexion);
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@IDcomponente", idcomponente);
                    comando.Parameters.Add("@codigo", SqlDbType.Int);
                    comando.Parameters.Add("@mensaje", SqlDbType.VarChar, 250);
                    comando.Parameters["@codigo"].Direction = ParameterDirection.Output;
                    comando.Parameters["@mensaje"].Direction = ParameterDirection.Output;
                    conexion.Open();
                    comando.ExecuteNonQuery();
                    codigo = Convert.ToInt32(comando.Parameters["@codigo"].Value.ToString());
                    mensaje = comando.Parameters["@mensaje"].Value.ToString();
                }
                catch (Exception e)
                {
                    codigo = -1;
                    mensaje = e.Message;
                }
                finally
                {
                    conexion.Close();
                }

                return dataProducto;

            }
        }


        #endregion
        //Crear Actualizar
        #region CREAR/ACTUALIZAR
        public static void CrearComponente(int idcomponente,string nombrecomponente,int cantidad,string marca,float precio, string detalle,int numerorden , out int codigo,out string mensaje)
        {

            using (var conexion = Conexion.ConectarConnection())
            {

                try
                {
                    SqlCommand comando = new SqlCommand("Crear_Componente", conexion);
                    comando.Parameters.AddWithValue("@IDcomponente", idcomponente);
                    comando.Parameters.AddWithValue("@NombreComponente", nombrecomponente);
                    comando.Parameters.AddWithValue("@Cantidad", cantidad);
                    comando.Parameters.AddWithValue("@Marca", marca);
                    comando.Parameters.AddWithValue("@Precio", precio);
                    comando.Parameters.AddWithValue("@Detalle", detalle);
                    comando.Parameters.AddWithValue("@NumeroOrden", numerorden);
                    comando.Parameters.Add("@codigo", SqlDbType.Int);
                    comando.Parameters.Add("@mensaje", SqlDbType.VarChar, 250);
                    comando.Parameters["@codigo"].Direction = ParameterDirection.Output;
                    comando.Parameters["@mensaje"].Direction = ParameterDirection.Output;
                    conexion.Open();
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.ExecuteNonQuery();
                    codigo = Convert.ToInt32(comando.Parameters["@codigo"].Value.ToString());
                    mensaje = comando.Parameters["@mensaje"].Value.ToString();
                }
                catch (Exception e)
                {
                    codigo = -1;
                    mensaje = e.Message;
                }
                finally
                {
                    conexion.Close();
                }

            }
        }



        #endregion







    }
}
