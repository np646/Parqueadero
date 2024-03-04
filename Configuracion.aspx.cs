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
    public partial class WebForm5 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dsDatos1 = datos.verCostoActual();
            txtCostoActual.Text = "$" + dsDatos1.Tables[0].Rows[0]["cos_valor"].ToString();
            dsDatos1 = datos.verIVAActual();
            txtIVAActual.Text = dsDatos1.Tables[0].Rows[0]["iva_valor"].ToString() + "%";
            dsDatos1 = datos.verDisponibilidadActual();
            txtDispActual.Text = dsDatos1.Tables[0].Rows[0]["dis_cantidad"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnCambiarIVA_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.registrarIVA(double.Parse(txtNuevoIVA.Text), 1);
            dsDatos = datos.verIVAActual();
            txtIVAActual.Text = dsDatos.Tables[0].Rows[0]["iva_valor"].ToString() + "%";
        }

        protected void btnCambiarPrecio_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.registrarCosto(double.Parse(txtNuevoCosto.Text), 1);
            dsDatos = datos.verCostoActual();
            txtCostoActual.Text = "$" + dsDatos.Tables[0].Rows[0]["cos_valor"].ToString();

        }

        protected void btnCambiarDisponibilidad_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.registrarDisponibilidad(int.Parse(txtNuevoDisp.Text), 1);
            dsDatos = datos.verDisponibilidadActual();
            txtDispActual.Text = dsDatos.Tables[0].Rows[0]["dis_cantidad"].ToString();


        }
    }
}