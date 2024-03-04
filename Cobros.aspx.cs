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
    public partial class WebForm9 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        string idCliente;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dsDatos1 = datos.verDisponibilidadActual();
            txtDisponibilidad.Text = dsDatos1.Tables[0].Rows[0]["dis_cantidad"].ToString();
            GridView1.DataBind();
            GridView2.Visible = true;
            txtNombre.Visible = false;
            txtApellido.Visible = false;
            txtIdentificacion.Visible = false;
           
        }

            protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("Factura.aspx");
        }

        protected void btnBuscarCli_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            DataSet dsDatos = datos.verCliente(txtCedulaCli.Text);
            txtNombre.Visible = true;
            txtApellido.Visible = true;
            txtIdentificacion.Visible = true;



            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                txtNombre.Text = dsDatos.Tables[0].Rows[0]["cli_nombre"].ToString();
                txtApellido.Text = dsDatos.Tables[0].Rows[0]["cli_apellido"].ToString();
                txtIdentificacion.Text =  dsDatos.Tables[0].Rows[0]["cli_identificacion"].ToString();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("No existe el usuario.");
            }

        }

        protected void txtDatosCli_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = GridView1.SelectedRow.Cells[0].Text;
            
            Response.Redirect("Factura.aspx");

        }

        protected void btnIngresarPlaca_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.registrarAuto(txtNumPlaca.Text, txtIdentificacion.Text);
            GridView1.DataBind(); //grid refresh
            dsDatos = datos.reducirDisponibilidad();
            dsDatos = datos.verDisponibilidadActual();
            txtDisponibilidad.Text = dsDatos.Tables[0].Rows[0]["dis_cantidad"].ToString();

        }

        protected void btnRetirar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.retirarAuto(txtNumPlaca.Text);
            GridView1.DataBind();

            dsDatos = datos.aumentarDisponibilidad();
            dsDatos = datos.verDisponibilidadActual();
            txtDisponibilidad.Text = dsDatos.Tables[0].Rows[0]["dis_cantidad"].ToString();
        }

        protected void btnModificarDatos_Click(object sender, EventArgs e)
        {
            Session["identificacionCli"] = txtIdentificacion.Text;
            Response.Redirect("ModificarCliente.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            idCliente = txtIdentificacion.Text = GridView2.SelectedRow.Cells[2].Text.ToString();
            DataSet dsDatos = datos.verCliente(idCliente);


            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                txtNombre.Text = dsDatos.Tables[0].Rows[0]["cli_nombre"].ToString();
                txtApellido.Text = dsDatos.Tables[0].Rows[0]["cli_apellido"].ToString();
                txtIdentificacion.Text = dsDatos.Tables[0].Rows[0]["cli_identificacion"].ToString();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("No existe el usuario.");
            }
        }
    }
}