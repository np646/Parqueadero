<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerEmpleados.aspx.cs" Inherits="_20220707_Parquadero.WebForm8" %>

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
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin">
            <table class="auto-style1">
                <tr>
                    <td colspan="6" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-size: x-large; color: #FFFFFF; background-color: #808080">&nbsp;&nbsp; Empleados registrados</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Usuario:</td>
                    <td class="auto-style5" colspan="2">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:TextBox ID="txtNombre" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style5" colspan="2">
                        <asp:TextBox ID="txtApellido" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="btnEliminarEmp" runat="server" OnClick="btnEliminarEmp_Click" Text="Eliminar empleado" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2"></td>
                    <td class="auto-style3" colspan="2"></td>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="btnModificar" runat="server" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnModificar_Click" Text="Modificar empleado" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">&nbsp;</td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlEmpleados" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="emp_id" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="emp_id" />
                                <asp:BoundField DataField="emp_nombre" HeaderText="Nombre" SortExpression="emp_nombre" />
                                <asp:BoundField DataField="emp_apellido" HeaderText="Apellido" SortExpression="emp_apellido" />
                                <asp:BoundField DataField="emp_usuario" HeaderText="Usuario" SortExpression="emp_usuario" />
                                <asp:BoundField DataField="emp_correo" HeaderText="Correo" SortExpression="emp_correo" />
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
                        <asp:SqlDataSource ID="SqlEmpleados" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoConnectionString2 %>" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoConnectionString2.ProviderName %>" SelectCommand="SELECT emp_id, emp_nombre, emp_apellido, emp_usuario, emp_correo FROM tbl_empleado"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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
