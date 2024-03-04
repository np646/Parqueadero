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
    public partial class WebForm8 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNombre.Visible = false;
            txtApellido.Visible = false;
            btnEliminarEmp.Visible = false;
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.verEmpleado(txtUsuario.Text);

            if (dsDatos.Tables[0].Rows.Count == 0)
            {
                txtNombre.Text = "No existe el empleado.";
            }
            else
            {
                txtNombre.Text = dsDatos.Tables[0].Rows[0]["emp_nombre"].ToString();
                txtApellido.Text = dsDatos.Tables[0].Rows[0]["emp_apellido"].ToString();

                txtNombre.Visible= true;
                txtApellido.Visible = true;
                btnEliminarEmp.Visible = true;
            }
        }

        protected void btnEliminarEmp_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.eliminarEmpleado(txtUsuario.Text);
            GridView1.DataBind();
            btnEliminarEmp.Visible = false;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Session["usuarioEmpleado"] = txtUsuario.Text;
            Response.Redirect("ModificarEmpleado.aspx");
        }
    }
}