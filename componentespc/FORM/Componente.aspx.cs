using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace componentespc.FORM
{
    public partial class Componente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void componenteDS_Delete(object sender, ObjectDataSourceStatusEventArgs e)
        {

            int codigo = Convert.ToInt32(e.OutputParameters["codigo"]);
            string mensaje = e.OutputParameters["mensaje"].ToString();

           

            ASPxGridView1.JSProperties["cpCodigo"] = codigo;
            ASPxGridView1.JSProperties["cpMensaje"] = mensaje;
                    
        }

    
    }
}