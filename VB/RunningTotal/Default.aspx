<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RunningTotal.DefaultForm" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="SqlDataSource1" Width="100%" ClientIDMode="AutoID" IsMaterialDesign="False">
            <OptionsView HorizontalScrollBarMode="Auto" />
            <OptionsFilter NativeCheckBoxes="False" />
            <Fields>
                <dx:PivotGridField Area="RowArea" AreaIndex="0" ID="fieldProductName1"
                    Caption="Product" Name="fieldProductName1" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField Area="ColumnArea" AreaIndex="0" ID="fieldOrderDate1"
                    Caption="Year" Name="fieldOrderDate1" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateYear" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField Area="ColumnArea" AreaIndex="1" Caption="Quarter" ID="fieldQuarter" ValueFormat-FormatString="Qtr {0}"
                    ValueFormat-FormatType="Numeric" >
<ValueFormat FormatString="Qtr {0}" FormatType="Numeric"></ValueFormat>
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateQuarter" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField Area="DataArea" AreaIndex="0" ID="fieldProductAmount"
                    Caption="Product Sales" Name="fieldProductAmount1" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>
            <OptionsView ShowFilterHeaders="False" ShowColumnTotals="False" />
            <OptionsData DataProcessingEngine="Optimized" />
        </dx:ASPxPivotGrid>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [CustomerReports]"></asp:SqlDataSource>

    </form>
</body>
</html>
