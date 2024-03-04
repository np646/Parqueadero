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
using Xceed.Wpf.Toolkit;

namespace _20220707_Parquadero
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegistar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.VerificarUsuario(txtUsuario.Text, txtContrasena.Text);
             if (dsDatos.Tables[0].Rows.Count > 0)
             {
                //string idEmp = dsDatos.Tables[0].Rows[0]["emp_id"].ToString();
                Session["usuario"] = txtUsuario.Text;

                 Response.Redirect("Menu.aspx");
             }
             else
             {
                System.Windows.Forms.MessageBox.Show("Usuario o contraseña incorrectos.");
                txtContrasena.Text = txtUsuario.Text = "";
             }
            
            //System.Windows.Forms.MessageBox.Show("Hello world");

         // Response.Redirect("Menu.aspx");
        }



        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnCambiarContrasena_Click(object sender, EventArgs e)
        {
            Response.Redirect("CambiarContrasenaEmpleado.aspx");
        }
    }
}