<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="_20220707_Parquadero.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 735px;
            height: 193px;
        }
        .auto-style6 {
            height: 26px;
            text-align: center;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 183px;
            text-align: center;
        }
        .auto-style12 {
            text-align: center;
            width: 184px;
        }
        .auto-style13 {
            width: 361px;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
            width: 404px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Registrar empleado</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: none; border-width: thin">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">
            <table class="auto-style2" align="center">
                <tr>
                    <td class="auto-style10" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">Nombre:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtNomEmp" runat="server" Width="167px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">Apellido:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtApellidoEmp" runat="server" Width="167px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">Usuario:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtUsuarioEmp" runat="server" Width="168px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">Contraseña:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtContrasenaEmp" runat="server" TextMode="Password" Width="167px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">Correo:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtCorreoEmp" runat="server" Width="167px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13" colspan="2">&nbsp;</td>
                    <td class="auto-style14" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13" colspan="2">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style14" colspan="2">
                        <asp:Button ID="btnRegistrarse" runat="server" OnClick="btnRegistrarse_Click" Text="Registrarse" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
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
