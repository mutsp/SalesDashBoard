﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DashBoard.aspx.cs" Inherits="DashBoard" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .sampleTable
        {
            border-spacing: 0px;
            border-collapse: collapse;
            margin: 0px;
            padding: 2px;
            width: 467px;
            vertical-align: top;
            text-align: left;
            height: 300px;
        }
        .controls
        {
            border-spacing: 0px;
            border-collapse: collapse;
            margin-top: 0px;
            margin-left: 0px;
            margin-right: 0px;
            padding-top: 0px;
            padding-bottom: 0px;
            width: 100%;
            vertical-align: middle;
        }
        
        .style5
        {
            font-size: 9pt;
            color: #1a3b69;
            width: 412px;
        }
        .style6
        {
            width: 48%;
        }
    .style7
    {
        width: 32%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph2" runat="Server">
    <div class="breadcrumb">
        <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
            <tr>
                <td style="vertical-align: top; text-align: left; width: 50%">
                    &nbsp;
                </td>
                <td style="vertical-align: top; text-align: right; width: 50%">
                </td>
            </tr>
        </table>
    </div>
    <div class="container">
        <div>
            <fieldset>
                <legend>&nbsp;PERFORMANCE REPORTS</legend>
                <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                    <tr>
                        <td style="padding-top: 5px; padding-bottom: 5px">
                            <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                                <tr>
                                    <td style="text-align: left; vertical-align: top;" class="style6">
                                        <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable"
                                            style="padding: 5px">
                                            <tr>
                                                <td style="width: 30%">
                                                    Select Filter Option
                                                </td>
                                                <td style="width: 50%">
                                                    <asp:DropDownList ID="cboSearchType" runat="server" Width="95%" AutoPostBack="True"
                                                        OnSelectedIndexChanged="cboSearchType_SelectedIndexChanged">
                                                        <asp:ListItem Value="Select">-- Select --</asp:ListItem>
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
                                                    &nbsp;
                                                </td>
                                                <td style="width: 50%">
                                                    &nbsp;
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
                                                    &nbsp; Monthly Performance By Product
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Chart ID="Chart7" runat="server" BackColor="243, 223, 193" Width="412px" Height="296px"
                                                        BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" BorderWidth="2px" BorderColor="#B54001"
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
                                                            <%-- <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BackSecondaryColor="White"
                                                                BackColor="OldLace" ShadowColor="Transparent" BackGradientStyle="TopBottom">
                                                                <AxisY LineColor="64, 64, 64, 64" LabelAutoFitMaxFontSize="8">
                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" Format="C0" />
                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                </AxisY>
                                                                <AxisX LineColor="64, 64, 64, 64" LabelAutoFitMaxFontSize="8">
                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" IsEndLabelVisible="False" Format="MM-dd" />
                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                </AxisX>
                                                            </asp:ChartArea>--%>
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

group by Name,ReportDate

order by Name"></asp:SqlDataSource>
                                                    <asp:MultiView ID="MultiView2" runat="server">
                                                        <asp:View ID="View2" runat="server">
                                                            <table class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                                                                <tr>
                                                                    <td>
                                                                        Product Types- Combined Totals
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;
                                                                        <asp:Chart ID="Chart8" runat="server" DataSourceID="SqlDataSource1" Height="301px"
                                                                            Width="412px" BackColor="243, 223, 193" BorderlineDashStyle="Solid" BackGradientStyle="TopBottom"
                                                                            BorderWidth="2px" BorderColor="#B54001">
                                                                            <Titles>
                                                                                <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                                                    Text="Profit By Month" Name="Products" ForeColor="26, 59, 105">
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
                                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LOCALMACHINE5 %>"
                                                                            SelectCommand="GetSummarySalesByMonth" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:View>
                                                    </asp:MultiView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblSelectedEmpFn0" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblRatingSerial0" runat="server" Text="0" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblCommentToBeSaved0" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblGroupID3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblGroupID4" runat="server" Text="Label" Visible="False" BorderStyle="None"></asp:Label>
                                                    <asp:Label ID="lblIself0" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblIsSup0" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
                                                    <asp:Label ID="lblIsHOD0" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 70%; text-align: left; vertical-align: top; padding-left: 10px;">
                                        <table cellpadding="0" cellspacing="0" class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTable">
                                            <tr>
                                                <td style="text-align: left; vertical-align: top; padding-bottom: 5px">
                                                    <strong>Total Monthly Performance-Summary</strong>
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
                                                            <asp:BoundColumn DataField="ReportDate" HeaderText="Report Date">
                                                                <ItemStyle Width="20%" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                                                    Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                                                            </asp:BoundColumn>
                                                            <asp:BoundColumn DataField="Sales" HeaderText="Total Sales">
                                                                <ItemStyle Width="30%" />
                                                            </asp:BoundColumn>
                                                            <asp:BoundColumn DataField="Cost" HeaderText="Total Cost"></asp:BoundColumn>
                                                            <asp:ButtonColumn CommandName="view"  HeaderText="Profit" Text="Profit" ButtonType="PushButton" DataTextField="Profit" DataTextFormatString="{0:#,###,###.##}">
                                                                <ItemStyle CssClass="GridButtonColumnItemStyle" Font-Size="10pt" Width="25%" />
                                                            </asp:ButtonColumn>
                                                            <%--
                                                            <asp:BoundColumn DataField="Profit" HeaderText="Profit">
                                                                <ItemStyle CssClass="GridButtonColumnItemStyle" Font-Size="10pt" Width="25%" />
                                                            </asp:BoundColumn>--%>
                                                        </Columns>
                                                    </asp:DataGrid>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left; vertical-align: top; padding-bottom: 5px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left; vertical-align: top; padding-bottom: 5px">
                                                    <table class="ThirdTableRow5_FirstTableColumn3_FirstTableSecondTableCol5Table">
                                                        <tr>
                                                            <td class="style7">
                                                                Monthly Performance</td>
                                                            <td width="50%">
                                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                                    Height="25px" ondatabound="DropDownList1_DataBound" 
                                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="119px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                        ForeColor="#333333" GridLines="None" Width="90%" AllowPaging="True" Font-Bold="False"
                                                        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                                                        PageSize="15" AllowSorting="True">
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
                                                            <%--<asp:BoundColumn DataField="Profit" HeaderText="Profit">
                                                                <ItemStyle Width="30%" Font-Size="10pt" ForeColor="red" Font-Bold="true" />
                                                            </asp:BoundColumn>--%>
                                                            <asp:ButtonColumn CommandName="view"  HeaderText="Profit" Text="Profit" ButtonType="PushButton" DataTextField="Profit" DataTextFormatString="{0:#,###,###.##}">
                                                                <ItemStyle CssClass="GridButtonColumnItemStyle" Font-Size="10pt" Width="17%" />
                                                            </asp:ButtonColumn>
                                                        </Columns>
                                                    </asp:DataGrid>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 20px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="sampleTable">
                                                        <tr>
                                                            <td class="style5">
                                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LOCALMACHINE5 %>"
                                                                    SelectCommand="SELECT [TotalCost], [Name] FROM [ItemTransactions]"></asp:SqlDataSource>
                                                            </td>
                                                            <td valign="top">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:MultiView ID="MultiView1" runat="server">
                                                        <asp:View ID="View1" runat="server">
                                                            <br />
                                                        </asp:View>
                                                    </asp:MultiView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pop" runat="Server">
    <p>
    </p>
</asp:Content>
