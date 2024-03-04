<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="_20220707_Parquadero.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 100%;
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            margin-top: 0px;
        }
        .auto-style17 {
            width: 178px;
        }
        .auto-style19 {
            width: 728px;
        }
        .auto-style23 {
            width: 354px;
        }
        .auto-style24 {
            text-align: left;
            width: 176px;
        }
        .auto-style25 {
            height: 26px;
        }
        .auto-style26 {
            text-align: center;
            width: 181px;
            height: 26px;
        }
        .auto-style36 {
            width: 728px;
            height: 396px;
        }
        .auto-style37 {
            height: 212px;
        }
        .auto-style39 {
            width: 577px;
            height: 26px;
        }
        .auto-style42 {
            height: 25px;
        }
        .auto-style43 {
            text-align: center;
            width: 181px;
            height: 25px;
        }
        .auto-style46 {
            width: 577px;
            height: 25px;
        }
        .auto-style47 {
            text-align: justify;
            height: 25px;
            width: 180px;
        }
        .auto-style48 {
            text-align: left;
            width: 181px;
            height: 25px;
        }
        .auto-style49 {
            text-align: left;
            width: 181px;
            height: 26px;
        }
        .auto-style51 {
            height: 26px;
            width: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style12">
                    <table class="auto-style1" align="center">
                        <tr>
                            <td class="auto-style11" style="background-color: #808080; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-size: medium; color: #FFFFFF">Iniciar sesión</td>
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
                                        <td class="auto-style19">
                                            <table class="auto-style36" style="border-style: solid; border-width: thin">
                                                <tr>
                                                    <td class="auto-style37" colspan="4">
                                <asp:Image ID="Image1" runat="server" CssClass="auto-style14" Height="212px" ImageUrl="~/Imagenes/empleado.jpg" Width="335px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style42" colspan="2">&nbsp;</td>
                                                    <td class="auto-style46" colspan="2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style47"></td>
                                                    <td class="auto-style47">&nbsp;&nbsp;&nbsp; Usuario:</td>
                                                    <td class="auto-style48">
                                <asp:TextBox ID="txtUsuario" runat="server" Width="153px"></asp:TextBox>
                                                    </td>
                                                    <td class="auto-style43">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style25" colspan="2">
                                                        <table class="auto-style23">
                                                            <tr>
                                                                <td class="auto-style17">&nbsp;</td>
                                                                <td class="auto-style24">&nbsp;&nbsp;&nbsp; Contraseña:</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td class="auto-style49">
                                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" Width="153px"></asp:TextBox>
                                                    </td>
                                                    <td class="auto-style26">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style25" colspan="2">
                                                        &nbsp;</td>
                                                    <td class="auto-style39" colspan="2">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style25" colspan="4">
                                <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Ingresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="148px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style25" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style51">
                                                    </td>
                                                    <td class="auto-style25">
                                <asp:Button ID="btnCambiarContrasena" runat="server" OnClick="btnCambiarContrasena_Click" Text="Olvidó la contraseña" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="148px" />
                                                    </td>
                                                    <td class="auto-style26">
                                <asp:Button ID="btnRegistrarse" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnRegistrarse_Click" Text="Registrarse" Width="148px" />
                                                    </td>
                                                    <td class="auto-style26">
                                                    </td>
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
                        <tr>
                            <td class="auto-style13">
                                &nbsp;</td>
                        </tr>
                    </table>
            </div>
    </form>
</body>
</html>
