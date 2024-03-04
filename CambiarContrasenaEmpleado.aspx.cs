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
    public partial class WebForm14 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {

            DataSet dsDatos = datos.cambiarContrasenaEmp(txtUsuarioEmp.Text, txtNuevaContrasena.Text);

            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                System.Windows.Forms.MessageBox.Show("Se ha cambiado la contraseña.");
              
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Ingrese correctamente los datos.");
                txtUsuarioEmp.Text = txtNuevaContrasena.Text = "";
            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {

            Response.Redirect("Inicio.aspx");
        }
    }
}