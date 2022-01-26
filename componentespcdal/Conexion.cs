using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace componentespcdal
{
    public class Conexion
    {

        public static SqlConnection ConectarConnection()
        {



            var cs = ConfigurationManager.ConnectionStrings["strConexion"].ConnectionString;
            var con = new SqlConnection(cs);



            return con;
        }



    }
}