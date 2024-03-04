<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambiarContrasenaEmpleado.aspx.cs" Inherits="_20220707_Parquadero.WebForm14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 53%;
            height: 133px;
        }
        .auto-style3 {
            text-align: center;
            width: 220px;
        }
        .auto-style5 {
            width: 220px;
        }
        .auto-style7 {
            height: 27px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            width: 737px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; background-color: #808080; color: #FFFFFF">Cambiar contraseña</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style9" style="border-style: solid; border-width: thin">
                                    <table align="center" class="auto-style2">
                                        <tr>
                                            <td class="auto-style7" colspan="2" style="border-style: none"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5" style="border-style: none">
                                                <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                                            </td>
                                            <td class="auto-style3" style="border-style: none">
                        <asp:TextBox ID="txtUsuarioEmp" runat="server" Width="180px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5" style="border-style: none">Nueva Contraseña:</td>
                                            <td class="auto-style3" style="border-style: none">
                        <asp:TextBox ID="txtNuevaContrasena" runat="server" Width="180px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style7" colspan="2" style="border-style: none"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="border-style: none">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3" style="border-style: none">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                                            </td>
                                            <td class="auto-style3" style="border-style: none">
                        <asp:Button ID="btnCambiar" runat="server" OnClick="btnCambiar_Click" Text="Cambiar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8" colspan="2" style="border-style: none">&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
