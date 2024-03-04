<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerClientes.aspx.cs" Inherits="_20220707_Parquadero.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            margin-top: 0px;
        }
        .auto-style12 {
            width: 204px;
            text-align: center;
        }
        .auto-style21 {
            width: 155px;
            text-align: center;
        }
        .auto-style22 {
            width: 218px;
        }
        .auto-style23 {
            width: 154px;
            text-align: center;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            width: 218px;
            text-align: center;
        }
        .auto-style26 {
            width: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style24" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Clientes registrados</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: none; border-width: thin">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                    <td class="auto-style12" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">Cédula:</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtCedulaCli" runat="server" Width="150px"></asp:TextBox>
                        </td>
                    <td class="auto-style23">
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style12" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                    <td class="auto-style12" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtNombre" runat="server" Width="129px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="auto-style4"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" colspan="2">&nbsp;</td>
                    <td colspan="3" class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <div class="auto-style24">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cli_id" DataSourceID="sqlClientes" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="140px" Width="750px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="cli_id" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="cli_id" />
                                <asp:BoundField DataField="cli_nombre" HeaderText="Nombre" SortExpression="cli_nombre" />
                                <asp:BoundField DataField="cli_apellido" HeaderText="Apellido" SortExpression="cli_apellido" />
                                <asp:BoundField DataField="cli_direccion" HeaderText="Dirección" SortExpression="cli_direccion" />
                                <asp:BoundField DataField="cli_identificacion" HeaderText="Identificación" SortExpression="cli_identificacion" />
                                <asp:BoundField DataField="cli_usuario" HeaderText="Usuario" SortExpression="cli_usuario" />
                                <asp:BoundField DataField="cli_correo" HeaderText="Correo" SortExpression="cli_correo" />
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
                        </div>
                        <asp:SqlDataSource ID="sqlClientes" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoConnectionString %>" OnSelecting="sqlClientes_Selecting" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoConnectionString.ProviderName %>" SelectCommand="SELECT cli_id, cli_nombre, cli_apellido, cli_direccion, cli_identificacion, cli_usuario, cli_correo FROM tbl_cliente"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="2">
                        &nbsp;</td>
                    <td colspan="3" class="auto-style24">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="2">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td colspan="3" class="auto-style24">&nbsp;</td>
                </tr>
            </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
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
