/* Test suite for libxlsxwriter Vala bindings */

int main(string[] args) {
    Test.init (ref args);
    Test.add_func ("/test/workbook/creation", () => {
        var workbook = new XlsxWriter.Workbook("test_create.xlsx");
        var err = workbook.close();
        if ( err != XlsxWriter.Error.LXW_NO_ERROR)
            Test.fail_printf ("FAIL: workbook_creation - Error: %s\n", strerror(err));
    });
    Test.add_func ("/test/worksheet/operations", () => {
        var workbook = new XlsxWriter.Workbook("test_worksheet.xlsx");
        var worksheet = workbook.add_worksheet("TestSheet");

        // Test writing string
        var err1 = worksheet.write_string(0, 0, "Test String", null);
        if (err1 != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message ("FAIL: worksheet_operations write_string - Error: %s\n", strerror(err1));
            workbook.close();
            Test.fail ();
        }

        // Test writing number
        var err2 = worksheet.write_number(1, 0, 42.5, null);
        if (err2 != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message ("FAIL: worksheet_operations write_number - Error: %s\n", strerror(err2));
            workbook.close();
            Test.fail ();
        }

        // Test writing formula
        var err3 = worksheet.write_formula(2, 0, "=A1&\" \"&A2", null);
        if (err3 != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message ("FAIL: worksheet_operations write_formula - Error: %s\n", strerror(err3));
            workbook.close();
            Test.fail ();
        }

        var close_err = workbook.close();
        if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
            Test.fail_printf ("FAIL: worksheet_operations close - Error: %s\n", strerror(close_err));
    });
    Test.add_func ("/test/format/creation", () => {
        var workbook = new XlsxWriter.Workbook("test_format.xlsx");
        var format = workbook.add_format();

        format.set_bold();
        format.set_italic();
        format.set_font_color(XlsxWriter.ColorT.RED);
        format.set_font_size(12.0);
        format.set_align(XlsxWriter.FormatAlignments.LXW_ALIGN_CENTER);

        var worksheet = workbook.add_worksheet(null);
        var err = worksheet.write_string(0, 0, "Formatted Text", format);

        if (err != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message("FAIL: format_creation - Error: %s\n", strerror(err));
            workbook.close();
            Test.fail ();
        }

        var close_err = workbook.close();
        if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
            Test.fail_printf("FAIL: format_creation close - Error: %s\n", strerror(close_err));
    });
    Test.add_func ("/test/column/operations", () => {
        var workbook = new XlsxWriter.Workbook("test_colrow.xlsx");
        var worksheet = workbook.add_worksheet(null);

        // Set column width
        var err1 = worksheet.set_column(0, 2, 20.0, null);
        if (err1 != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message("FAIL: column_row_operations set_column - Error: %s\n", strerror(err1));
            workbook.close();
            Test.fail ();
        }

        // Set row height
        var err2 = worksheet.set_row(0, 25.0, null);
        if (err2 != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message("FAIL: column_row_operations set_row - Error: %s\n", strerror(err2));
            workbook.close();
            Test.fail ();
        }

        // Merge range
        var err3 = worksheet.merge_range(2, 0, 2, 2, "Merged Cell", null);
        if (err3 != XlsxWriter.Error.LXW_NO_ERROR) {
            Test.message("FAIL: column_row_operations merge_range - Error: %s\n", strerror(err3));
            workbook.close();
            Test.fail ();
        }

        var close_err = workbook.close();
        if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
            Test.fail_printf("FAIL: column_row_operations close - Error: %s\n", strerror(close_err));
    });
    Test.add_func ("/test/multiple/worksheets", () => {
        var workbook = new XlsxWriter.Workbook("test_multi.xlsx");

        var ws1 = workbook.add_worksheet("First");
        var ws2 = workbook.add_worksheet("Second");
        var ws3 = workbook.add_worksheet(null); // Should be named "Sheet3"

        ws1.write_string(0, 0, "First Sheet", null);
        ws2.write_string(0, 0, "Second Sheet", null);
        ws3.write_string(0, 0, "Third Sheet", null);

        var close_err = workbook.close();
        if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
            Test.fail_printf("FAIL: multiple_worksheets close - Error: %s\n", strerror(close_err));
    });
    return Test.run ();
}
