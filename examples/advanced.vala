/* Advanced example demonstrating formatting, formulas, and charts with Vala */

int main(string[] args)
{
    // Create a new workbook
    var workbook = new XlsxWriter.Workbook("advanced_example.xlsx");

    // Add worksheets
    var worksheet = workbook.add_worksheet("Data");
    var chart_sheet = workbook.add_chartsheet("Chart");

    // Create formats
    var header_format = workbook.add_format();
    header_format.set_bold();
    header_format.set_bg_color(XlsxWriter.ColorT.YELLOW);
    header_format.set_align(XlsxWriter.FormatAlignments.LXW_ALIGN_CENTER);

    var currency_format = workbook.add_format();
    currency_format.set_num_format("$#,##0.00");

    var percent_format = workbook.add_format();
    percent_format.set_num_format("0.00%");

    // Write headers
    worksheet.write_string(0, 0, "Month", header_format);
    worksheet.write_string(0, 1, "Sales", header_format);
    worksheet.write_string(0, 2, "Expenses", header_format);
    worksheet.write_string(0, 3, "Profit", header_format);
    worksheet.write_string(0, 4, "Margin", header_format);

    // Write data
    string[] months = {"January", "February", "March", "April", "May", "June"};
    double[] sales = {10000, 15000, 12000, 18000, 20000, 25000};
    double[] expenses = {8000, 12000, 9000, 14000, 16000, 18000};

    for (int i = 0; i < months.length; i++)
    {
        worksheet.write_string(i + 1, 0, months[i], null);
        worksheet.write_number(i + 1, 1, sales[i], currency_format);
        worksheet.write_number(i + 1, 2, expenses[i], currency_format);

        // Write formula for profit
        string formula = "=B%d-C%d".printf(i + 2, i + 2);
        worksheet.write_formula(i + 1, 3, formula, currency_format);

        // Write formula for margin
        string margin_formula = "=D%d/B%d".printf(i + 2, i + 2);
        worksheet.write_formula(i + 1, 4, margin_formula, percent_format);
    }

    // Add total row
    worksheet.write_string(8, 0, "Total", header_format);
    worksheet.write_formula(8, 1, "=SUM(B2:B7)", currency_format);
    worksheet.write_formula(8, 2, "=SUM(C2:C7)", currency_format);
    worksheet.write_formula(8, 3, "=SUM(D2:D7)", currency_format);

    // Set column widths
    worksheet.set_column(0, 0, 12.0, null);
    worksheet.set_column(1, 4, 15.0, null);

    // Create a column chart
    var chart = workbook.add_chart(XlsxWriter.ChartTypes.LXW_CHART_COLUMN);
    chart.set_title("Monthly Sales and Expenses");

    // Add series to the chart
    chart.add_series("'Data'!$A$1:$A$7", "'Data'!$B$1:$B$7");
    chart.add_series("'Data'!$A$1:$A$7", "'Data'!$C$1:$C$7");

    // Insert chart into the worksheet
    worksheet.insert_chart(2, 6, chart);

    // Set the chart sheet
    chart_sheet.set_chart(chart);

    // Add document properties
    var props = XlsxWriter.DocProperties() {
        title = "Sales Report",
        subject = "Monthly Sales Analysis",
        author = "Vala User", company = "Example Corp"
    };
    workbook.set_properties(props);

    // Close the workbook
    var err = workbook.close();
    if (err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        critical("Error closing workbook: %s\n", strerror(err));
        return 1;
    }

    message("Successfully created advanced_example.xlsx\n");
    return 0;
}
