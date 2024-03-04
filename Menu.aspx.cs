using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20220707_Parquadero
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bienvenido.aspx");
        }

        protected void imgBtnCobros_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cobros.aspx");
        }

        protected void imgBtnClientes_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("VerClientes.aspx");
        }

        protected void imgBtnEmpleados_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("VerEmpleados.aspx");
        }

        protected void imgBtnConfig_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Configuracion.aspx");
        }

        protected void imgBtnReportes_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }

        protected void imgBtnRegistrarCli_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RegistroCliente.aspx");
        }
    }
    
}