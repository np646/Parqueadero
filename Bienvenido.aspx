<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bienvenido.aspx.cs" Inherits="_20220707_Parquadero.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style11 {
            width: 100%;
            text-align: center;
            margin-right: 25px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 7px;
        }
        .auto-style15 {
            width: 8px;
        }
        .auto-style19 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <table class="auto-style13">
                <tr>
                    <td colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">SISTEMA DE PARQUEADERO</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/parqueadero1.jpg" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Button ID="lblIniciarSesion" runat="server" OnClick="lblIniciarSesion_Click" Text="Iniciar sesión" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
