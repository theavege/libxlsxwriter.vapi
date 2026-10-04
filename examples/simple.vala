/* Simple example demonstrating basic libxlsxwriter usage with Vala */

int main(string[] args) {
    // Create a new workbook
    var workbook = new XlsxWriter.Workbook("example.xlsx");

    // Add a worksheet
    var worksheet = workbook.add_worksheet("Sheet1");

    // Write some data
    worksheet.write_string(0, 0, "Hello", null);
    worksheet.write_string(0, 1, "World", null);
    worksheet.write_number(1, 0, 123.456, null);

    // Create a format
    var format = workbook.add_format();
    format.set_bold();
    format.set_font_color(XlsxWriter.ColorT.RED);
    format.set_font_size(14.0);

    // Write with format
    worksheet.write_string(2, 0, "Bold Red Text", format);

    // Set column width
    worksheet.set_column(0, 0, 15.0, null);

    // Close the workbook
    var err = workbook.close();
    if (err != XlsxWriter.Error.LXW_NO_ERROR) {
        critical("Error closing workbook: %s\n", strerror(err));
        return 1;
    }

    message("Successfully created example.xlsx\n");
    return 0;
}
