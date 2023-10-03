<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="RunningTotal.DefaultForm" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.18.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.18.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="OptionsTable BottomMargin">
            <tr>
                <td>
                    <dx:ASPxCheckBox ID="cbRunningTotals" runat="server" Text="Include Previous Quarter Sales into the Values of the Next Quarter"
                        Checked="True" AutoPostBack="True" />
                    <dx:ASPxCheckBox ID="cbAllowCrossGroupRunningTotals" runat="server" Text="Allow Cross-Group Running Totals Accumulation"
                        Checked="False" AutoPostBack="True" />
                </td>
            </tr>
        </table>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="NwindDataSource"
            CssClass="" Width="100%">
            <OptionsView ShowFilterHeaders="False" ShowColumnTotals="False" />
            <Fields>
                <dx:PivotGridField Area="RowArea" AreaIndex="0" FieldName="ProductName" ID="fieldProductName"
                    Caption="Product" />
                <dx:PivotGridField Area="ColumnArea" AreaIndex="0" FieldName="OrderDate" ID="fieldOrderDate"
                    Caption="Year" GroupInterval="DateYear" />
                <dx:PivotGridField Area="ColumnArea" AreaIndex="1" FieldName="OrderDate" Caption="Quarter"
                    GroupInterval="DateQuarter" ID="fieldQuarter" ValueFormat-FormatString="Qtr {0}"
                    ValueFormat-FormatType="Numeric" />
                <dx:PivotGridField Area="DataArea" AreaIndex="0" FieldName="ProductAmount" ID="fieldProductAmount"
                    Caption="Product Sales" />
            </Fields>
            <OptionsView HorizontalScrollBarMode="Auto" />
            <OptionsFilter NativeCheckBoxes="False" />
        </dx:ASPxPivotGrid>
        <asp:AccessDataSource ID="NwindDataSource" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [CustomerReports]"></asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
