<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="_20220707_Parquadero.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style15 {
            height: 30px;
            text-align: center;
        }
        .auto-style17 {
            width: 780px;
        }
        .auto-style26 {
            width: 77px;
        }
        .auto-style32 {
            text-align: center;
        }
        .auto-style33 {
            width: 78px;
        }
        .auto-style36 {
            width: 248px;
        }
        .auto-style37 {
            width: 346px;
        }
        .auto-style66 {
            width: 77px;
            text-align: center;
        }
        .auto-style67 {
            width: 248px;
            text-align: center;
        }
        .auto-style68 {
            width: 346px;
            text-align: center;
        }
        .auto-style69 {
            width: 78px;
            text-align: center;
        }
        .auto-style70 {
            width: 77px;
            height: 30px;
            text-align: center;
        }
        .auto-style71 {
            height: 30px;
            width: 248px;
        }
        .auto-style72 {
            height: 30px;
            width: 346px;
        }
        .auto-style73 {
            height: 30px;
            width: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style9">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style32" colspan="7" style="font-family: 'trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF; background-color: #808080">Reportes</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: none; border-width: thin">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="border-style: solid; border-width: thin"><table class="auto-style17" align="center">
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style36" colspan="3">&nbsp;</td>
                    <td class="auto-style37" colspan="3">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style66">Fecha de inicio:</td>
                    <td class="auto-style67" colspan="3">
                        <asp:TextBox ID="txtFechaInicio" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style68" colspan="3">Fecha de fin:</td>
                    <td class="auto-style69">
                        <asp:TextBox ID="txtFechaFin" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66">
                        &nbsp;</td>
                    <td class="auto-style67" colspan="3">
                        &nbsp;</td>
                    <td class="auto-style68" colspan="3">
                        &nbsp;</td>
                    <td class="auto-style69">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="btnValorIVA" runat="server" Text="Valor de IVA" BackColor="#5294AD" BorderStyle="None" ForeColor="White" OnClick="btnValorIVA_Click" Width="150px" />
                    </td>
                    <td class="auto-style15" colspan="2">
                        <asp:Button ID="btnVentas" runat="server" OnClick="btnVentas_Click" Text="Ventas" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btnHistorial" runat="server" OnClick="btnHistorial_Click" Text="Historial" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style15" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style15" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style15" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iva_id" DataSourceID="SqlIVA" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="iva_valor" HeaderText="Valor" SortExpression="iva_valor" />
                                <asp:BoundField DataField="iva_fecha" HeaderText="Fecha" SortExpression="iva_fecha" />
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
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="his_id" DataSourceID="SqlHistorial" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="his_placa" HeaderText="Placa" SortExpression="his_placa" />
                                <asp:BoundField DataField="his_fecEntrada" HeaderText="Fecha de ingreso" SortExpression="his_fecEntrada" />
                                <asp:BoundField DataField="his_fecSalida" HeaderText="Fecha de salida" SortExpression="his_fecSalida" />
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
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ven_id" DataSourceID="SqlVentas" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ven_valor" HeaderText="Valor" SortExpression="ven_valor" />
                                <asp:BoundField DataField="ven_fecha" HeaderText="Fecha" SortExpression="ven_fecha" />
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
                        <asp:SqlDataSource ID="SqlIVA" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoFinal %>" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoFinal.ProviderName %>" SelectCommand="SP_SELECT_REPORTEIVA" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtFechaInicio" DefaultValue="" Name="inicio" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtFechaFin" DefaultValue="" Name="fin" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlVentas" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoFinal %>" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoFinal.ProviderName %>" SelectCommand="SP_SELECT_REPORTEVENTAS" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtFechaInicio" DefaultValue="" Name="inicio" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtFechaFin" DefaultValue="" Name="fin" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlHistorial" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_parqueaderoFinal %>" ProviderName="<%$ ConnectionStrings:bdd_parqueaderoFinal.ProviderName %>" SelectCommand="SP_SELECT_REPORTEHISTORIAL" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtFechaInicio" DefaultValue="" Name="inicio" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtFechaFin" DefaultValue="" Name="fin" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="8">
                        <asp:TextBox ID="txtVentas" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style70">
                        <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" BackColor="#5294AD" BorderStyle="None" ForeColor="White" Width="150px" />
                    </td>
                    <td class="auto-style71" colspan="3"></td>
                    <td class="auto-style72" colspan="3"></td>
                    <td class="auto-style73"></td>
                </tr>
            </table>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            &nbsp;</div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
