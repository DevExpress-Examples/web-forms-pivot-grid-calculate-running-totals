using System;

namespace RunningTotal {
    public partial class DefaultForm : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            ASPxPivotGrid1.Fields["fieldQuarter"].RunningTotal = cbRunningTotals.Checked;
            ASPxPivotGrid1.OptionsData.AllowCrossGroupVariation = cbAllowCrossGroupRunningTotals.Checked;
        }
    }
}