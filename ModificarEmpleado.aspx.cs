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
    public partial class WebForm13 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        String usuarioEmp;

        protected void Page_Load(object sender, EventArgs e)
        {

            usuarioEmp = Session["usuarioEmpleado"].ToString();
            DataSet dsDatos1 = datos.verCliente(usuarioEmp);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.modificarEmpleado(txtNombre.Text, txtApellido.Text, usuarioEmp, txtContrasena.Text, txtCorreo.Text);

            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                System.Windows.Forms.MessageBox.Show("Se ha modificado los datos del empleado.");
                Response.Redirect("VerEmpleados.aspx");
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Ingrese correctamente los datos.");
            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerEmpleados.aspx");
        }
    }
}