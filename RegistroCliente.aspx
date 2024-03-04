<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="_20220707_Parquadero.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 766px;
        }
        .auto-style6 {
            width: 361px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
            width: 362px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Registrar cliente</td>
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
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Nombre:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNombreCli" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Apellido:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtApellidoCli" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Identificación:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtIdentificacionCli" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Usuario:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUsuarioCli" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Contraseña:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtContrasenaCli" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Correo:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCorreoCli" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Dirección:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDireccionCli" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnRegresar" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnRegresar_Click" Text="Regresar" Width="150px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnRegistrar" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Text="Registrar cliente" OnClick="btnRegistrar_Click" Width="150px" />
                    </td>
                </tr>
            </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8" style="border-style: none; border-width: thin"></td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
