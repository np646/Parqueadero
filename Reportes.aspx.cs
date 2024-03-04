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
    public partial class WebForm6 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtVentas.Visible = false;
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnAutosIngresados_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.verReporteAutos(txtFechaInicio.Text, txtFechaFin.Text);

            if (dsDatos.Tables[0].Rows.Count > 0)
            {
               
                GridView1.Visible = false;
                GridView2.Visible = false;
                //GridView3.Visible = true;
                GridView4.Visible = false;
                txtVentas.Visible = false;
               //GridView3.DataBind();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Datos incorrectos o no existen autos activos.");
            }
        }

        protected void btnValorIVA_Click(object sender, EventArgs e)
        {

            DataSet dsDatos = datos.verReporteIVA(txtFechaInicio.Text, txtFechaFin.Text);

            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                
                GridView1.Visible = true;
                GridView2.Visible = false;
                //GridView3.Visible = false;
                GridView4.Visible = false;
                GridView1.DataBind();
                txtVentas.Visible = false;
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Ingrese correctamente los datos");
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnVentas_Click(object sender, EventArgs e)
        {

            DataSet dsDatos = datos.verVentas(txtFechaInicio.Text, txtFechaFin.Text);



            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
                //GridView3.Visible = false;
                GridView4.Visible = false;
                GridView2.DataBind();
                txtVentas.Visible = true;
               DataSet dsDatos1 = datos.verTotalVentas(txtFechaInicio.Text, txtFechaFin.Text);

                dsDatos1 = datos.verTotalVentas(txtFechaInicio.Text, txtFechaFin.Text);
                txtVentas.Text = "Total de ventas en este rango de tiempo: " + dsDatos1.Tables[0].Rows[0]["val_valor"].ToString();
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Ingrese correctamente los datos");
            }
        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.verHistorial(txtFechaInicio.Text, txtFechaFin.Text);



            if (dsDatos.Tables[0].Rows.Count > 0)
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                //GridView3.Visible = false;
                GridView4.Visible = true;
                GridView4.DataBind();
                txtVentas.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}