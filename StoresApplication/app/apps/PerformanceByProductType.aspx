﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="PerformanceByProductType.aspx.cs" Inherits="PerformanceByProductType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style6
        {
            width: 48%;
        }
        .sampleTable
        {
            border-spacing: 0px;
            border-collapse: collapse;
            margin: 0px;
            padding: 2px;
            width: 467px;
            vertical-align: top;
            text-align: left;
            height: 234px;
        }
        
        .style5
        {
            font-size: 9pt;
            color: #1a3b69;
            width: 412px;
        }
        .style8
        {
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph2" runat="Server">
    <div>
        <fieldset>
            <legend>&nbsp;PERFORMANCE BY PRODUCT TYPE</legend>
            <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                <tr>
                    <td style="padding-top: 5px; padding-bottom: 5px">
                        <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                            <tr>
                                <td style="text-align: left; vertical-align: top;" class="style6">
                                    <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable"
                                        style="padding: 5px">
                                        <tr>
                                            <td style="width: 30%" class="style8">
                                                Select Filter Option
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="cboSearchType" runat="server" Width="95%" AutoPostBack="True"
                                                    OnSelectedIndexChanged="cboSearchType_SelectedIndexChanged">
                                                    <asp:ListItem>-- Select --</asp:ListItem>
                                                    <asp:ListItem Value="ProductType">Product Type</asp:ListItem>
                                                    <asp:ListItem Value="Product">Product</asp:ListItem>
                                                    <asp:ListItem>Month</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 20%">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 60%; padding-left: 10px; text-align: left; vertical-align: top;">
                                    <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable"
                                        style="padding: 5px">
                                        <tr>
                                            <td style="width: 30%">
                                                Select Type
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="cboSearchType0" runat="server" Width="95%" OnDataBound="cboSearchType0_DataBound"
                                                    AutoPostBack="True" OnSelectedIndexChanged="cboSearchType0_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 20%">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 5px; padding-bottom: 5px">
                        <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                            <tr>
                                <td style="width: 30%; padding-right: 5px; text-align: left; vertical-align: top;">
                                    <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                                        <tr>
                                            <td>
                                                &nbsp;<strong> <span class="style8">Monthly Performance By Product</span></strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Chart ID="Chart7" runat="server" BackColor="243, 223, 193" Width="408px" Height="309px"
                                                    BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" 
                                                    BorderWidth="2px" BorderColor="#B54001"
                                                    DataSourceID="ProductType">
                                                    <Titles>
                                                        <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                            Text="Profit By Product Type" Name="Products" ForeColor="26, 59, 105">
                                                        </asp:Title>
                                                    </Titles>
                                                    <Legends>
                                                        <asp:Legend TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent"
                                                            Font="Trebuchet MS, 8.25pt, style=Bold" IsTextAutoFit="False" Enabled="False"
                                                            Name="Default">
                                                        </asp:Legend>
                                                    </Legends>
                                                    <Series>
                                                        <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Profit" BorderColor="180, 26, 59, 105">
                                                        </asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                     
                                                        <asp:ChartArea Name="ChartArea1" BorderColor="#339966">
                                                            <AxisX LineColor="Gray">
                                                                <MajorGrid LineColor="LightGray" />
                                                            </AxisX>
                                                            <AxisY LineColor="Gray">
                                                                <MajorGrid LineColor="LightGray" />
                                                            </AxisY>
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                </asp:Chart>
                                                <asp:SqlDataSource ID="ProductType" runat="server" ConnectionString="<%$ ConnectionStrings:LOCALMACHINE5 %>"
                                                    SelectCommand="SELECT     Name, SUM(TotalSales - TotalCost) AS Profit,convert(varchar(6),ReportDate,7) as ReportDate
FROM         ItemTransactions

group by Name,ReportDate"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp; &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            <strong><span class="style8">Top Performing Categories</span></strong></td>
                                        </tr>
                                        </table>
                                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        ForeColor="#333333" GridLines="None" Width="99%" AllowPaging="True" Font-Bold="False"
                                        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                                        PageSize="8" AllowSorting="True">
                                        <ItemStyle CssClass="GridItemStyle GridRows" Font-Size="10pt" />
                                        <AlternatingItemStyle CssClass="GridAlternatingItemStyle GridRows" Font-Size="10pt" />
                                        <HeaderStyle CssClass="GridHeaderStyle" />
                                        <PagerStyle CssClass="GridPagerStyle" Mode="NumericPages" />
                                        <FooterStyle CssClass="GridFooterStyle" />
                                        <EditItemStyle CssClass="GridEditItemStyle" />
                                        <SelectedItemStyle CssClass="GridSelectedItemStyle" />
                                        <Columns>
                                            <asp:BoundColumn DataField="Name" HeaderText="Product Type">
                                                <ItemStyle Width="30%" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="ReportDate" HeaderText="Report Date">
                                                <ItemStyle Width="20%" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                                    Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                                            </asp:BoundColumn>
                                              <asp:ButtonColumn CommandName="view"  HeaderText="Profit" Text="Profit" ButtonType="PushButton" DataTextField="Profit" DataTextFormatString="{0:#,###,###.##}">
                                                                <ItemStyle CssClass="GridButtonColumnItemStyle" Font-Size="10pt" Width="10%" />
                                                            </asp:ButtonColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </td>
                                <td style="width: 70%; text-align: left; vertical-align: top; padding-left: 10px;">
                                    <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                                        <tr>
                                            <td style="text-align: left; vertical-align: top; padding-bottom: 5px">
                                                <asp:Label ID="Label5" runat="server" ForeColor="Black" 
                                                    style="font-weight: 700; font-size: 12px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left; vertical-align: top; padding-bottom: 5px">
                                                <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                    ForeColor="#333333" GridLines="None" Width="90%" AllowPaging="True" Font-Bold="False"
                                                    Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                                                    PageSize="2">
                                                    <ItemStyle CssClass="GridItemStyle GridRows" Font-Size="10pt" />
                                                    <AlternatingItemStyle CssClass="GridAlternatingItemStyle GridRows" Font-Size="10pt" />
                                                    <HeaderStyle CssClass="GridHeaderStyle" />
                                                    <PagerStyle CssClass="GridPagerStyle" Mode="NumericPages" Visible="False" />
                                                    <FooterStyle CssClass="GridFooterStyle" />
                                                    <EditItemStyle CssClass="GridEditItemStyle" />
                                                    <SelectedItemStyle CssClass="GridSelectedItemStyle" />
                                                    <Columns>
                                                        <asp:BoundColumn DataField="Name" HeaderText="Product Type">
                                                            <ItemStyle Width="20%" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                                                Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                                                        </asp:BoundColumn>
                                                        <asp:BoundColumn DataField="ReportDate" HeaderText="Report Date">
                                                        <ItemStyle Width="20%" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                                                Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                                                        </asp:BoundColumn>
                                                         <asp:ButtonColumn CommandName="view"  HeaderText="Profit" Text="Profit" ButtonType="PushButton" DataTextField="Profit" DataTextFormatString="{0:#,###,###.##}">
                                                                <ItemStyle CssClass="GridButtonColumnItemStyle" Font-Size="10pt" Width="10%" />
                                                            </asp:ButtonColumn>

                                                    </Columns>
                                                </asp:DataGrid>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="sampleTable">
                                                    <tr>
                                                        <td class="style5">
                                                            <asp:Chart ID="Chart8" runat="server" DataSourceID="ByProductType" Height="200px"
                                                                Width="403px" BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" BorderWidth="2px"
                                                                BorderColor="#B54001">
                                                                <Titles>
                                                        <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                            Text="Profits By Month/Product Type" Name="Products" ForeColor="26, 59, 105">
                                                        </asp:Title>
                                                    </Titles>
                                                                <Legends>
                                                                                <asp:Legend TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent"
                                                                                    Font="Trebuchet MS, 8.25pt, style=Bold" IsTextAutoFit="False" Enabled="False"
                                                                                    Name="Default">
                                                                                </asp:Legend>
                                                                            </Legends>
                                                                <Series>
                                                                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="ReportDate" YValueMembers="Profit">
                                                                    </asp:Series>
                                                                </Series>
                                                                <ChartAreas>
                                                                    <asp:ChartArea Name="ChartArea1">
                                                                    </asp:ChartArea>
                                                                </ChartAreas>
                                                            </asp:Chart>
                                                            <asp:SqlDataSource ID="ByProductType" runat="server" ConnectionString="<%$ ConnectionStrings:LOCALMACHINE5 %>"
                                                                SelectCommand="GetByProductType" SelectCommandType="StoredProcedure">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="cboSearchType0" Name="Id" PropertyName="SelectedValue"
                                                                        Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td valign="top">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" ForeColor="Black" 
                                                    style="font-weight: 700; font-size: 12px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            
                                                <asp:Chart ID="Chart9" runat="server" BackColor="243, 223, 193" Width="412px" Height="296px"
                                                    BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" 
                                                    BorderWidth="2px" BorderColor="#B54001"
                                                    DataSourceID="TopItems">
                                                    <Titles>
                                                        <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                            Text="Top performing Products" Name="Products" ForeColor="26, 59, 105">
                                                        </asp:Title>
                                                    </Titles>
                                                    <Legends>
                                                        <asp:Legend TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent"
                                                            Font="Trebuchet MS, 8.25pt, style=Bold" IsTextAutoFit="False" Enabled="False"
                                                            Name="Default">
                                                        </asp:Legend>
                                                    </Legends>
                                                    <Series>
                                                        <asp:Series Name="Series1" XValueMember="Description" YValueMembers="Profit" 
                                                            BorderColor="180, 26, 59, 105">
                                                        </asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1" BorderColor="#339966">
                                                            <AxisX LineColor="Gray">
                                                                <MajorGrid LineColor="LightGray" />
                                                            </AxisX>
                                                            <AxisY LineColor="Gray">
                                                                <MajorGrid LineColor="LightGray" />
                                                            </AxisY>
                                                        </asp:ChartArea>
                                                        
                                                    </ChartAreas>
                                                </asp:Chart>
                                                <asp:SqlDataSource ID="TopItems" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:LOCALMACHINE5 %>" 
                                                    SelectCommand="getTopPerformingProductsbyCat" 
                                                    SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="cboSearchType0" Name="id" 
                                                            PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblSelectedEmpFn" runat="server" Text="Label" Visible="False"></asp:Label>
                                                <asp:Label ID="lblRatingSerial" runat="server" Text="0" Visible="False"></asp:Label>
                                                <asp:Label ID="lblCommentToBeSaved" runat="server" Text="Label" Visible="False"></asp:Label>
                                                <asp:Label ID="lblGroupID" runat="server" Text="Label" Visible="False"></asp:Label>
                                                <asp:Label ID="lblGroupID2" runat="server" Text="Label" Visible="False" BorderStyle="None"></asp:Label>
                                                <asp:Label ID="lblIself" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
                                                <asp:Label ID="lblIsSup" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
                                                <asp:Label ID="lblIsHOD" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pop" runat="Server">
</asp:Content>
