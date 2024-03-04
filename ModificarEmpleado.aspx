<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarEmpleado.aspx.cs" Inherits="_20220707_Parquadero.WebForm13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 697px;
            height: 258px;
        }
        .auto-style16 {
            height: 22px;
        }
        .auto-style27 {
            width: 86px;
            height: 27px;
        }
        .auto-style28 {
            width: 87px;
            height: 27px;
        }
        .auto-style29 {
            text-align: center;
            height: 27px;
        }
        .auto-style30 {
            width: 86px;
            height: 28px;
        }
        .auto-style31 {
            width: 87px;
            height: 28px;
        }
        .auto-style32 {
            text-align: center;
            height: 28px;
        }
        .auto-style33 {
            height: 28px;
        }
        .auto-style13 {
            width: 86px;
            height: 26px;
        }
        .auto-style22 {
            width: 87px;
            height: 26px;
        }
        .auto-style34 {
            height: 26px;
            text-align: center;
        }
        .auto-style35 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style35" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Modificar datos del empleado</td>
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
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">
            <table class="auto-style3" align="center">
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td colspan="3" class="auto-style16">
                        <asp:TextBox ID="txtIdentificacionCli" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td colspan="3" class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28">Nombre:</td>
                    <td class="auto-style29" colspan="3">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style29" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28">Apellido:</td>
                    <td class="auto-style29" colspan="3">
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style29" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style31">Contraseña:</td>
                    <td class="auto-style32" colspan="3">
                        <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td colspan="2" class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style31">Correo:</td>
                    <td class="auto-style32" colspan="3">
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
                    <td colspan="2" class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style31">&nbsp;</td>
                    <td colspan="2" class="auto-style33">&nbsp;</td>
                    <td colspan="2" class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        </td>
                    <td class="auto-style22">
                        </td>
                    <td class="auto-style22">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="145px" />
                    </td>
                    <td class="auto-style34" colspan="3">
                        <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar cambios" BackColor="#5294AD" BorderStyle="None" ForeColor="White" />
                    </td>
                    <td class="auto-style22"></td>
                    <td class="auto-style22"></td>
                </tr>
            </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
