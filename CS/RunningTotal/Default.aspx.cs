using DevExpress.Data.PivotGrid;
using DevExpress.Web.ASPxPivotGrid;
using DevExpress.XtraPivotGrid;
using System;

namespace RunningTotal {
    public partial class DefaultForm : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            DataSourceColumnBinding dsBinding = new DataSourceColumnBinding("ProductAmount");
            if(cbRunningTotals.Checked) {
                var criteria = cbAllowCrossGroupRunningTotals.Checked ?
                    CalculationPartitioningCriteria.RowValue :
                    CalculationPartitioningCriteria.RowValueAndColumnParentValue;
                RunningTotalBinding runningBinding = new RunningTotalBinding(dsBinding, criteria, PivotSummaryType.Sum);
                fieldProductAmount.DataBinding = runningBinding;
            }
            else {
                fieldProductAmount.DataBinding = dsBinding;
            }
        }
    }
}