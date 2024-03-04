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

using System.Drawing.Printing;
using System.Drawing;
//using System.Windows.Forms;

namespace _20220707_Parquadero
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Acc datos = new Acc();
        string placa;
        int idFactura;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            placa = Session["id"].ToString();
            DataSet dsDatos2 = datos.registrarFactura(placa);
            dsDatos2 = datos.verUltimaFactura();
            idFactura = Int32.Parse(dsDatos2.Tables[0].Rows[0]["fac_id"].ToString());

            DataSet dsDatos1 = datos.verEncabezado(idFactura);
            txtIdentificacion.Text = dsDatos1.Tables[0].Rows[0]["cli_identificacion"].ToString();
            txtNombres.Text = dsDatos1.Tables[0].Rows[0]["cli_nombre"].ToString() + " " +
                dsDatos1.Tables[0].Rows[0]["cli_apellido"].ToString();
            txtDireccion.Text = dsDatos1.Tables[0].Rows[0]["cli_direccion"].ToString();
            txtCorreo.Text = dsDatos1.Tables[0].Rows[0]["cli_correo"].ToString();
            txtPlaca.Text = dsDatos1.Tables[0].Rows[0]["aut_placa"].ToString();
            txtFecha.Text = dsDatos1.Tables[0].Rows[0]["enc_fecha"].ToString();
            txtFacNum.Text = "Factura no. " + dsDatos1.Tables[0].Rows[0]["enc_id"].ToString();


            DataSet dsDatos = datos.verDetalle(idFactura);
            txtCosto.Text = dsDatos.Tables[0].Rows[0]["cos_valor"].ToString();
            txtCantidad.Text = "1";
            txtIVA.Text = dsDatos.Tables[0].Rows[0]["iva_valor"].ToString();
            txtSubtotal.Text = dsDatos.Tables[0].Rows[0]["det_subtotal"].ToString();
            txtTotal.Text = dsDatos.Tables[0].Rows[0]["det_total"].ToString();

        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cobros.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


        protected void btnPagar_Click(object sender, EventArgs e)
        {
            DataSet dsDatos = datos.registrarVenta(Double.Parse(txtTotal.Text));
            dsDatos = datos.registrarHistorial(txtPlaca.Text);
            dsDatos = datos.eliminarRegistro(txtPlaca.Text);

            System.Windows.Forms.MessageBox.Show("Pago finalizado.");
            Response.Redirect("Cobros.aspx");

        }

        void pd_PrintPage(object sender, PrintPageEventArgs e)
        {
            e.Graphics.DrawString( "SISTEMA DE PARQUEADERO" + "\n\n\n"
                + txtFacNum.Text +"\n"
                + "Fecha: " + txtFecha.Text + "\n\n"
                + "Cliente: " + txtNombres.Text + "\n"
                + "Dirección: " + txtDireccion.Text + "\n"
                + "Correo: " + txtCorreo.Text + "\n\n"
                + "Placa: " + txtPlaca.Text + "\n\n"
                + "       ----------------------" + "\n\n"

                + "CANTIDAD" + " SUBTOTAL " + " IVA " + "\n\n"
                + txtCantidad.Text + "                   " 
                + txtSubtotal.Text+ "                    " 
                + txtIVA.Text + "%\n\n"
                + "Total: " + txtTotal.Text

                , new System.Drawing.Font("Times New Roman", 12), new SolidBrush(Color.Black), 60, 10);
            
      }

       
        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                PrintDocument pd = new PrintDocument();
                pd.PrintPage += new PrintPageEventHandler(pd_PrintPage);
                pd.Print();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.End();
            }

        }
    }
}