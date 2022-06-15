Imports DevExpress.Data.PivotGrid
Imports DevExpress.Web.ASPxPivotGrid
Imports DevExpress.XtraPivotGrid
Imports System

Namespace RunningTotal

    Public Partial Class DefaultForm
        Inherits Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            Dim dsBinding As DataSourceColumnBinding = New DataSourceColumnBinding("ProductAmount")
            If cbRunningTotals.Checked Then
                Dim criteria = If(cbAllowCrossGroupRunningTotals.Checked, CalculationPartitioningCriteria.RowValue, CalculationPartitioningCriteria.RowValueAndColumnParentValue)
                Dim runningBinding As RunningTotalBinding = New RunningTotalBinding(dsBinding, criteria, PivotSummaryType.Sum)
                fieldProductAmount.DataBinding = runningBinding
            Else
                fieldProductAmount.DataBinding = dsBinding
            End If
        End Sub
    End Class
End Namespace
