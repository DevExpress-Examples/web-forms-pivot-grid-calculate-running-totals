Imports System
Imports DevExpress.Data.PivotGrid
Imports DevExpress.Web.ASPxPivotGrid
Imports DevExpress.XtraPivotGrid

Namespace RunningTotal
    Partial Public Class DefaultForm
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

            Dim dsBinding As New DataSourceColumnBinding("ProductAmount")
            If cbRunningTotals.Checked Then
                Dim criteria = If(cbAllowCrossGroupRunningTotals.Checked, CalculationPartitioningCriteria.RowValue, CalculationPartitioningCriteria.RowValueAndColumnParentValue)
                Dim runningBinding As New RunningTotalBinding(dsBinding, criteria, PivotSummaryType.Sum)
                fieldProductAmount.DataBinding = runningBinding
            Else
                fieldProductAmount.DataBinding = dsBinding
            End If
        End Sub
    End Class
End Namespace