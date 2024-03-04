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
    public partial class WebForm7 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        protected void Page_Load(object sender, EventArgs e)
        {
            //btnEliminarCli.Visible = false;
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.verCliente(txtCedulaCli.Text);

            if (dsDatos.Tables[0].Rows.Count == 0)
            {
                txtNombre.Text = "No existe el usuario.";
            }
            else
            {
                txtNombre.Text = dsDatos.Tables[0].Rows[0]["cli_nombre"].ToString();
                txtApellido.Text = dsDatos.Tables[0].Rows[0]["cli_apellido"].ToString();
                txtDireccion.Text = dsDatos.Tables[0].Rows[0]["cli_direccion"].ToString();
                txtUsuario.Text = dsDatos.Tables[0].Rows[0]["cli_usuario"].ToString();
                txtCorreo.Text = dsDatos.Tables[0].Rows[0]["cli_correo"].ToString();
              //  btnEliminarCli.Visible = true;
            }
        }

        protected void sqlClientes_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEliminarCli_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.eliminarCliente(txtCedulaCli.Text);
            GridView1.DataBind();
            //btnEliminarCli.Visible = false;

        }
    }
}