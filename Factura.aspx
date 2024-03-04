<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="_20220707_Parquadero.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            margin-bottom: 0px;
        }
        .auto-style15 {
            width: 761px;
            height: 334px;
        }
        .auto-style48 {
            height: 29px;
        }
        .auto-style63 {
            width: 189px;
            height: 28px;
        }
        .auto-style64 {
            width: 190px;
            height: 28px;
        }
        .auto-style65 {
            // width: 190px;
            text-align: center;
            height: 28px;
        }
        .auto-style67 {
            width: 189px;
            height: 28px;
            text-align: center;
        }
        .auto-style70 {
            text-align: center;
            height: 23px;
            width: 89%;
        }
        .auto-style71 {
            width: 189px;
            height: 29px;
        }
        .auto-style72 {
            width: 190px;
            height: 29px;
            text-align: center;
        }
        .auto-style73 {
            width: 190px;
            height: 29px;
        }
        .auto-style74 {
            width: 189px;
            height: 29px;
            text-align: center;
        }
        .auto-style75 {
            width: 189px;
            height: 30px;
        }
        .auto-style76 {
            width: 190px;
            height: 30px;
        }
        .auto-style77 {
            // width: 190px;
            text-align: center;
            height: 30px;
        }
        .auto-style78 {
            width: 189px;
            height: 30px;
            text-align: center;
        }
        .auto-style79 {
            height: 30px;
        }
        .auto-style80 {
            height: 30px;
            text-align: center;
        }
        .auto-style83 {
            height: 23px;
            width: 1%;
        }
        .auto-style84 {
            width: 1%;
        }
        .auto-style85 {
            text-align: center;
            width: 89%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Factura</td>
                </tr>
                <tr>
                    <td class="auto-style83"></td>
                    <td class="auto-style83"></td>
                    <td class="auto-style83"></td>
                    <td class="auto-style70" style="border-style: none; ">
                    </td>
                    <td class="auto-style83"></td>
                    <td class="auto-style83"></td>
                    <td class="auto-style83"></td>
                </tr>
                <tr>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style85" style="border-style: none; ">
            <table class="auto-style15" align="center" style="border-style: solid; border-width: thin">
                <tr>
                    <td class="auto-style71">
                        <asp:TextBox ID="txtFacNum" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style73">
                        <asp:TextBox ID="txtFecha" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style74">
                        &nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">Placa</td>
                    <td class="auto-style72">
                        <asp:TextBox ID="txtPlaca" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style74">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">Identificación</td>
                    <td class="auto-style48">Nombres</td>
                    <td class="auto-style73">Dirección</td>
                    <td class="auto-style73">Correo</td>
                </tr>
                <tr>
                    <td class="auto-style75">
                        <asp:TextBox ID="txtIdentificacion" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style76">
                        <asp:TextBox ID="txtNombres" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style76">
                        <asp:TextBox ID="txtDireccion" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style77">
                        <asp:TextBox ID="txtCorreo" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style78">&nbsp;</td>
                    <td class="auto-style76">Valor unitario</td>
                    <td class="auto-style76">Cantidad</td>
                    <td class="auto-style79">Subtotal</td>
                </tr>
                <tr>
                    <td class="auto-style80">
                        &nbsp;</td>
                    <td class="auto-style79">
                        <asp:TextBox ID="txtCosto" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style79">
                        <asp:TextBox ID="txtCantidad" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style80">
                        <asp:TextBox ID="txtSubtotal" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style78">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style75"></td>
                    <td class="auto-style76"></td>
                    <td class="auto-style76">IVA</td>
                    <td class="auto-style77">
                        <asp:TextBox ID="txtIVA" runat="server" Width="151px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style78">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style76">Total</td>
                    <td class="auto-style77">
                        <asp:TextBox ID="txtTotal" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style78">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style77">&nbsp;</td>
                    <td class="auto-style77">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style63">
                        <asp:Button ID="btnPagar" runat="server" OnClick="btnPagar_Click" Text="Pagar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style65">
                        &nbsp;</td>
                    <td class="auto-style64">
                        &nbsp;</td>
                    <td class="auto-style64">
                        <asp:Button ID="btnImprimir" runat="server" OnClick="btnImprimir_Click" Text="Imprimir" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                </tr>
            </table>
                    </td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                    <td class="auto-style84">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
