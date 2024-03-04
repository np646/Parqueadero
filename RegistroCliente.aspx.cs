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
    public partial class WebForm11 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.registrarCliente(txtNombreCli.Text, txtApellidoCli.Text, txtDireccionCli.Text, txtIdentificacionCli.Text, txtUsuarioCli.Text, txtContrasenaCli.Text, txtCorreoCli.Text, 1);

            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                System.Windows.Forms.MessageBox.Show("Se ha creado el usuario");
                txtNombreCli.Text = txtApellidoCli.Text = txtUsuarioCli.Text = txtContrasenaCli.Text =
                    txtCorreoCli.Text = txtDireccionCli.Text = txtIdentificacionCli.Text = "";
                Response.Redirect("Menu.aspx");
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Ingrese correctamente los datos");
            }

        }
    }
}