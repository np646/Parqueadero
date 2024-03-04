using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace _20220707_Parquadero
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        String identificacionCli;
        protected void Page_Load(object sender, EventArgs e)
        {
            identificacionCli = Session["identificacionCli"].ToString();
            txtIdentificacionCli.Text = identificacionCli;
            DataSet dsDatos1 = datos.verCliente(identificacionCli);
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.modificarCliente(txtNombre.Text, txtApellido.Text, txtDireccion.Text, txtUsuario.Text, txtContrasena.Text, txtCorreo.Text, identificacionCli);

            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                System.Windows.Forms.MessageBox.Show("Se ha modificado el usuario");
                Response.Redirect("Cobros.aspx");
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Ingrese correctamente los datos");
            }

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cobros.aspx");
        }
    }
}