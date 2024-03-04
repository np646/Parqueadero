<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="_20220707_Parquadero.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style7 {
            width: 744px;
        }
        .auto-style12 {
            width: 371px;
        }
        .auto-style14 {
            width: 371px;
            text-align: center;
            height: 68px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 371px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Menú principal</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
            <table class="auto-style7" align="center" style="border-style: solid; border-width: thin">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:ImageButton ID="imgBtnCobros" runat="server" ImageUrl="~/Imagenes/cobros.jpg" OnClick="imgBtnCobros_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:ImageButton ID="imgBtnClientes" runat="server" ImageUrl="~/Imagenes/clientes.jpg" OnClick="imgBtnClientes_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:ImageButton ID="imgBtnReportes" runat="server" ImageUrl="~/Imagenes/registros.jpg" OnClick="imgBtnReportes_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:ImageButton ID="imgBtnEmpleados" runat="server" ImageUrl="~/Imagenes/empleados.jpg" OnClick="imgBtnEmpleados_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:ImageButton ID="imgBtnConfig" runat="server" ImageUrl="~/Imagenes/configuracion.jpg" OnClick="imgBtnConfig_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:ImageButton ID="imgBtnRegistrarCli" runat="server" ImageUrl="~/Imagenes/registrarcliente.jpg" OnClick="imgBtnRegistrarCli_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar sesión" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
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
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
