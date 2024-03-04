<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cobros.aspx.cs" Inherits="_20220707_Parquadero.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 827px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style8 {
            height: 170px;
            text-align: center;
        }
        .auto-style9 {
            width: 103px;
            text-align: center;
        }
        .auto-style12 {
            width: 821px;
        }
        .auto-style13 {
            text-align: center;
            width: 102px;
        }
        .auto-style23 {
            width: 4px;
        }
        .auto-style29 {
            margin-left: 0px;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style41 {
            height: 26px;
            text-align: center;
        }
        .auto-style60 {
            width: 821px;
            height: 132px;
        }
        .auto-style63 {
            width: 409px;
            height: 26px;
        }
        .auto-style64 {
            width: 410px;
            height: 26px;
        }
        .auto-style65 {
            width: 409px;
            height: 27px;
        }
        .auto-style66 {
            width: 410px;
            height: 27px;
        }
        .auto-style67 {
            margin-bottom: 0px;
        }
        .auto-style76 {
            width: 91px;
        }
        .auto-style80 {
            width: 91px;
            text-align: center;
        }
        .auto-style81 {
            width: 470px;
            text-align: center;
        }
        .auto-style83 {
            width: 92px;
        }
        .auto-style84 {
            width: 470px;
        }
        .auto-style85 {
            width: 572px;
        }
        .auto-style87 {
            width: 273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style30" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Cobros</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
            <table class="auto-style1" align="center">
                <tr>
                    <td colspan="7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtDisponibilidad" runat="server" Width="36px"></asp:TextBox>
                    &nbsp; espacios disponibles</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="7">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="7">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cli_id" DataSourceID="SqlClientes" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="cli_nombre" HeaderText="Nombre" SortExpression="cli_nombre" />
                                <asp:BoundField DataField="cli_apellido" HeaderText="Apellido" SortExpression="cli_apellido" />
                                <asp:BoundField DataField="cli_identificacion" HeaderText="Identificación" SortExpression="cli_identificacion" />
                                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Acción" ShowHeader="True" Text="Seleccionar" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlClientes" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoFinal %>" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoFinal.ProviderName %>" SelectCommand="SP_SELECT_CLIENTES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style80">
                        &nbsp;</td>
                    <td class="auto-style81" colspan="3">
                        &nbsp;</td>
                    <td class="auto-style30" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style80">
                        &nbsp;</td>
                    <td class="auto-style80">
                        &nbsp;</td>
                    <td class="auto-style81" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style30" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30" colspan="7">
                        <table class="auto-style60">
                            <tr>
                                <td class="auto-style63">
                        <asp:TextBox ID="txtCedulaCli" runat="server" Width="256px"></asp:TextBox>
                                </td>
                                <td class="auto-style64">
                        <asp:Button ID="btnBuscarCli" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnBuscarCli_Click" Text="Buscar cliente" Width="148px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style63">&nbsp;</td>
                                <td class="auto-style64">
                        <asp:Button ID="btnModificarDatos" runat="server" OnClick="btnModificarDatos_Click" Text="Modificar datos" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style63">&nbsp;</td>
                                <td class="auto-style64">
                                    <asp:Button ID="btnRegistrarCli" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Text="Registrar cliente" Width="150px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style65">
                        <asp:TextBox ID="txtNumPlaca" runat="server" Width="249px"></asp:TextBox>
                                </td>
                                <td class="auto-style66">
                        <asp:Button ID="btnIngresarPlaca" runat="server" Text="Ingresar placa" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnIngresarPlaca_Click" Width="148px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style65">&nbsp;</td>
                                <td class="auto-style66">
                        <asp:Button ID="btnRetirar" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnRetirar_Click" Text="Retitrar auto" Width="148px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style30" colspan="7">
                        <table class="auto-style12">
                            <tr>
                                <td class="auto-style87">
                        <asp:TextBox ID="txtIdentificacion" runat="server" CssClass="auto-style29" Width="150px"></asp:TextBox>
                                </td>
                                <td class="auto-style87">
                        <asp:TextBox ID="txtNombre" runat="server" OnTextChanged="txtDatosCli_TextChanged" Width="150px" CssClass="auto-style67"></asp:TextBox>
                                </td>
                                <td class="auto-style87">
                        <asp:TextBox ID="txtApellido" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style87">&nbsp;</td>
                                <td class="auto-style87">&nbsp;</td>
                                <td class="auto-style87">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        &nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="7">
                        <table class="auto-style12">
                            <tr>
                                <td class="auto-style8" colspan="8">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlIngreso" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="127px" Width="815px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="aut_placa" HeaderText="Placa" SortExpression="aut_placa" />
                                            <asp:BoundField DataField="ing_fecEntrada" HeaderText="Fecha de entrada" SortExpression="ing_fecEntrada" />
                                            <asp:BoundField DataField="ing_fecSalida" HeaderText="Fecha de salida" SortExpression="ing_fecSalida" />
                                            <asp:BoundField DataField="ing_tiempoTotal" HeaderText="Tiempo total (min)" SortExpression="ing_tiempoTotal" />
                                            <asp:ButtonField CommandName="Select" HeaderText="Pagar" Text="Ver factura" ButtonType="Button" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlIngreso" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoConnectionString2 %>" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoConnectionString2.ProviderName %>" SelectCommand="SP_SELECT_AUTOSACTIVOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td class="auto-style9">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style76">&nbsp;</td>
                    <td class="auto-style84" colspan="3">&nbsp;</td>
                    <td class="auto-style85" colspan="2">&nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style80">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style84" colspan="3">&nbsp;</td>
                    <td class="auto-style85" colspan="2">&nbsp;</td>
                    <td class="auto-style83">&nbsp;</td>
                </tr>
            </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
