<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuracion.aspx.cs" Inherits="_20220707_Parquadero.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91%;
        }
        .auto-style2 {
            width: 354px;
        }
        .auto-style3 {
            width: 354px;
            height: 23px;
            text-align: center;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 4px;
        }
        .auto-style8 {
            width: 354px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; background-color: #808080; color: #FFFFFF">Configuración</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Valor actual</td>
                    <td class="auto-style8">Nuevo valor</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtIVAActual" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNuevoIVA" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnCambiarIVA" runat="server" Text="Cambiar IVA" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="195px" OnClick="btnCambiarIVA_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtCostoActual" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNuevoCosto" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnCambiarPrecio" runat="server" Text="Cambiar precio base" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="195px" OnClick="btnCambiarPrecio_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDispActual" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNuevoDisp" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnCambiarDisponibilidad" runat="server" Text="Cambiar disponibilidad" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="195px" OnClick="btnCambiarDisponibilidad_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td style="border-style: none; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
