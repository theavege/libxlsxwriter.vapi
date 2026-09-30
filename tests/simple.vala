/* Test suite for libxlsxwriter Vala bindings */

bool test_workbook_creation()
{
    var workbook = new XlsxWriter.Workbook("test_create.xlsx");
    var err = workbook.close();

    if (err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        critical("FAIL: workbook_creation - Error: %s\n", strerror(err));
        return false;
    }

    message("PASS: workbook_creation\n");
    return true;
}

bool test_worksheet_operations()
{
    var workbook = new XlsxWriter.Workbook("test_worksheet.xlsx");
    var worksheet = workbook.add_worksheet("TestSheet");

    // Test writing string
    var err1 = worksheet.write_string(0, 0, "Test String", null);
    if (err1 != XlsxWriter.Error.LXW_NO_ERROR)
    {
        critical("FAIL: worksheet_operations write_string - Error: %s\n", strerror(err1));
        workbook.close();
        return false;
    }

    // Test writing number
    var err2 = worksheet.write_number(1, 0, 42.5, null);
    if (err2 != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: worksheet_operations write_number - Error: %s\n", strerror(err2));
        workbook.close();
        return false;
    }

    // Test writing formula
    var err3 = worksheet.write_formula(2, 0, "=A1&\" \"&A2", null);
    if (err3 != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: worksheet_operations write_formula - Error: %s\n", strerror(err3));
        workbook.close();
        return false;
    }

    var close_err = workbook.close();
    if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: worksheet_operations close - Error: %s\n", strerror(close_err));
        return false;
    }

    stdout.printf("PASS: worksheet_operations\n");
    return true;
}

bool test_format_creation()
{
    var workbook = new XlsxWriter.Workbook("test_format.xlsx");
    var format = workbook.add_format();

    format.set_bold();
    format.set_italic();
    format.set_font_color(XlsxWriter.ColorT.RED);
    format.set_font_size(12.0);
    format.set_align(XlsxWriter.FormatAlignments.LXW_ALIGN_CENTER);

    var worksheet = workbook.add_worksheet(null);
    var err = worksheet.write_string(0, 0, "Formatted Text", format);

    if (err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: format_creation - Error: %s\n", strerror(err));
        workbook.close();
        return false;
    }

    var close_err = workbook.close();
    if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: format_creation close - Error: %s\n", strerror(close_err));
        return false;
    }

    stdout.printf("PASS: format_creation\n");
    return true;
}

bool test_column_row_operations()
{
    var workbook = new XlsxWriter.Workbook("test_colrow.xlsx");
    var worksheet = workbook.add_worksheet(null);

    // Set column width
    var err1 = worksheet.set_column(0, 2, 20.0, null);
    if (err1 != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: column_row_operations set_column - Error: %s\n", strerror(err1));
        workbook.close();
        return false;
    }

    // Set row height
    var err2 = worksheet.set_row(0, 25.0, null);
    if (err2 != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: column_row_operations set_row - Error: %s\n", strerror(err2));
        workbook.close();
        return false;
    }

    // Merge range
    var err3 = worksheet.merge_range(2, 0, 2, 2, "Merged Cell", null);
    if (err3 != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: column_row_operations merge_range - Error: %s\n", strerror(err3));
        workbook.close();
        return false;
    }

    var close_err = workbook.close();
    if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: column_row_operations close - Error: %s\n", strerror(close_err));
        return false;
    }

    stdout.printf("PASS: column_row_operations\n");
    return true;
}

bool test_multiple_worksheets()
{
    var workbook = new XlsxWriter.Workbook("test_multi.xlsx");

    var ws1 = workbook.add_worksheet("First");
    var ws2 = workbook.add_worksheet("Second");
    var ws3 = workbook.add_worksheet(null); // Should be named "Sheet3"

    ws1.write_string(0, 0, "First Sheet", null);
    ws2.write_string(0, 0, "Second Sheet", null);
    ws3.write_string(0, 0, "Third Sheet", null);

    var close_err = workbook.close();
    if (close_err != XlsxWriter.Error.LXW_NO_ERROR)
    {
        stderr.printf("FAIL: multiple_worksheets close - Error: %s\n", strerror(close_err));
        return false;
    }

    stdout.printf("PASS: multiple_worksheets\n");
    return true;
}

int main()
{
    int passed = 0;
    int failed = 0;

    stdout.printf("Running libxlsxwriter Vala binding tests...\n\n");

    if (test_workbook_creation())
        passed++;
    else
        failed++;
    if (test_worksheet_operations())
        passed++;
    else
        failed++;
    if (test_format_creation())
        passed++;
    else
        failed++;
    if (test_column_row_operations())
        passed++;
    else
        failed++;
    if (test_multiple_worksheets())
        passed++;
    else
        failed++;

    stdout.printf("\n========================================\n");
    stdout.printf("Tests: %d passed, %d failed\n", passed, failed);
    stdout.printf("========================================\n");

    return failed > 0 ? 1 : 0;
}
