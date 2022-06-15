<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T590001)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Pivot Grid for Web Forms - How to calculate running totals

This example demonstrates how to include previous cell values in the next cell's values. 


[RunningTotalBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.RunningTotalBinding?p=netframework) is used to calculate cumulative values.

This example includes two check boxes. Enable one of them or both depending on your needs:
- The **Include Previous Quarter Sales into the Values of the Next Quarter** check box includes previous quarter sales in the next quarter sales value. 

- The **Allow Cross-Group Running Totals Accumulation** check box allows you to specify whether running totals are calculated independently within individual groups or for the entire Pivot Grid.

## Files to Look At

- [Default.aspx](./CS/RunningTotal/Default.aspx) (VB: [Default.aspx](./VB/RunningTotal/Default.aspx))
- [Default.aspx.cs](./CS/RunningTotal/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/RunningTotal/Default.aspx.vb))

## Documentation

- [Data Binding API](https://docs.devexpress.com/CoreLibraries/401533/devexpress-pivot-grid-core-library/data-binding-api)

## More Examples

- [Pivot Grid for Web Forms - How to use Data Binding API](https://github.com/DevExpress-Examples/aspxpivotgrid-field-calculation-bindings)
