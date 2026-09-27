/* libxlsxwriter.vapi - Vala bindings for libxlsxwriter
 * Copyright 2014-2021, John McNamara, jmcnamara@cpan.org. See LICENSE.txt.
 */

[CCode (cprefix = "lxw_", lower_case_cprefix = "lxw_", cheader_filename = "xlsxwriter.h")]
namespace XlsxWriter {

    [CCode (cname = "uint8_t", cheader_filename = "stdint.h")]
    [Flags]
    public enum UInt8 {
        NONE = 0
    }

    [CCode (cname = "uint16_t", cheader_filename = "stdint.h")]
    public struct UInt16 : uint16 {
    }

    [CCode (cname = "uint32_t", cheader_filename = "stdint.h")]
    public struct UInt32 : uint32 {
    }

    [CCode (cname = "int16_t", cheader_filename = "stdint.h")]
    public struct Int16 : int16 {
    }

    [CCode (cname = "int32_t", cheader_filename = "stdint.h")]
    public struct Int32 : int32 {
    }

    [CCode (cname = "size_t", cheader_filename = "stddef.h")]
    public struct SizeT : size_t {
    }

    [CCode (cname = "time_t", cheader_filename = "time.h")]
    public struct TimeT : time_t {
    }

    [CCode (cname = "FILE", cheader_filename = "stdio.h")]
    public struct FILE {
    }

    [CCode (cprefix = "", cname = "lxw_error", cheader_filename = "xlsxwriter.h,xlsxwriter/common.h")]
    public enum Error {
        LXW_NO_ERROR = 0,
        LXW_ERROR_MEMORY_MALLOC_FAILED = 1,
        LXW_ERROR_CREATING_XLSX_FILE = 2,
        LXW_ERROR_READING_ZIP_FILE = 3,
        LXW_ERROR_READING_ZIP_SUBFILE = 4,
        LXW_ERROR_PARSING_XML_STRING = 5,
        LXW_ERROR_ADDING_ZIP_FILE_TO_ARCHIVE = 6,
        LXW_ERROR_CLOSING_ZIP_FILE = 7,
        LXW_ERROR_WORKSHEET_NAME_TOO_LONG = 8,
        LXW_ERROR_WORKSHEET_NAME_INVALID_CHARS = 9,
        LXW_ERROR_WORKSHEET_NAME_ALREADY_EXISTS = 10,
        LXW_ERROR_MAX_STRING_LENGTH_EXCEEDED = 11,
        LXW_ERROR_ARRAY_DIMENSION_LIMIT_EXCEEDED = 12,
        LXW_ERROR_IMAGE_DIMENSIONS_EXCEEDED = 13,
        LXW_ERROR_UNSUPPORTED_IMAGE_TYPE = 14,
        LXW_ERROR_CANNOT_GET_IMAGE_DIMENSIONS = 15,
        LXW_ERROR_IN_VALIDATION_STRING_LENGTH = 16,
        LXW_ERROR_WORKSHEET_MAX_URL_ZERO = 17,
        LXW_ERROR_WORKSHEET_URL_ARRAY_INDEX_OUT_OF_RANGE = 18,
        LXW_ERROR_NAMED_RANGE_FORMAT_ERROR = 19,
        LXW_ERROR_DEFINED_NAME_OVERWRITE = 20,
        LXW_ERROR_PARAMETER_NOT_SUPPORTED = 21,
        LXW_ERROR_COLUMN_OR_ROW_ZERO = 22,
        LXW_ERROR_UNKNOWN_PARAMETER_TYPE = 23,
        LXW_ERROR_WORKSHEET_MERGE_RANGE_OVERLAP = 24,
        LXW_ERROR_SHARED_STRING_INDEX_OVERFLOW = 25,
        LXW_ERROR_REALLOC_FAILED = 26
    }

    [CCode (cname = "lxw_datetime", cheader_filename = "xlsxwriter/common.h")]
    public struct DateTime {
        public int year;
        public int month;
        public int day;
        public int hour;
        public int min;
        public double sec;
    }

    [CCode (cname = "lxw_color_t", cheader_filename = "xlsxwriter/format.h")]
    [SimpleType]
    public struct ColorT : uint32 {
        [CCode (cname = "LXW_COLOR_BLACK")]
        public const ColorT BLACK;
        [CCode (cname = "LXW_COLOR_BLUE")]
        public const ColorT BLUE;
        [CCode (cname = "LXW_COLOR_BROWN")]
        public const ColorT BROWN;
        [CCode (cname = "LXW_COLOR_CYAN")]
        public const ColorT CYAN;
        [CCode (cname = "LXW_COLOR_GRAY")]
        public const ColorT GRAY;
        [CCode (cname = "LXW_COLOR_GREEN")]
        public const ColorT GREEN;
        [CCode (cname = "LXW_COLOR_LIME")]
        public const ColorT LIME;
        [CCode (cname = "LXW_COLOR_MAGENTA")]
        public const ColorT MAGENTA;
        [CCode (cname = "LXW_COLOR_NAVY")]
        public const ColorT NAVY;
        [CCode (cname = "LXW_COLOR_ORANGE")]
        public const ColorT ORANGE;
        [CCode (cname = "LXW_COLOR_PINK")]
        public const ColorT PINK;
        [CCode (cname = "LXW_COLOR_PURPLE")]
        public const ColorT PURPLE;
        [CCode (cname = "LXW_COLOR_RED")]
        public const ColorT RED;
        [CCode (cname = "LXW_COLOR_SILVER")]
        public const ColorT SILVER;
        [CCode (cname = "LXW_COLOR_WHITE")]
        public const ColorT WHITE;
        [CCode (cname = "LXW_COLOR_YELLOW")]
        public const ColorT YELLOW;
    }

    [CCode (cprefix = "", cname = "enum lxw_format_underlines", cheader_filename = "xlsxwriter/format.h")]
    public enum FormatUnderlines {
        LXW_UNDERLINE_NONE = 0,
        LXW_UNDERLINE_SINGLE,
        LXW_UNDERLINE_DOUBLE,
        LXW_UNDERLINE_SINGLE_ACCOUNTING,
        LXW_UNDERLINE_DOUBLE_ACCOUNTING
    }

    [CCode (cprefix = "", cname = "enum lxw_format_scripts", cheader_filename = "xlsxwriter/format.h")]
    public enum FormatScripts {
        LXW_FONT_SUPERSCRIPT = 1,
        LXW_FONT_SUBSCRIPT
    }

    [CCode (cprefix = "", cname = "enum lxw_format_alignments", cheader_filename = "xlsxwriter/format.h")]
    public enum FormatAlignments {
        LXW_ALIGN_NONE = 0,
        LXW_ALIGN_LEFT,
        LXW_ALIGN_CENTER,
        LXW_ALIGN_RIGHT,
        LXW_ALIGN_FILL,
        LXW_ALIGN_JUSTIFY,
        LXW_ALIGN_CENTER_ACROSS,
        LXW_ALIGN_DISTRIBUTED,
        LXW_ALIGN_VERTICAL_TOP,
        LXW_ALIGN_VERTICAL_BOTTOM,
        LXW_ALIGN_VERTICAL_CENTER,
        LXW_ALIGN_VERTICAL_JUSTIFY,
        LXW_ALIGN_VERTICAL_DISTRIBUTED
    }

    [CCode (cprefix = "", cname = "enum lxw_format_diagonal_types", cheader_filename = "xlsxwriter/format.h")]
    public enum FormatDiagonalTypes {
        LXW_DIAGONAL_BORDER_UP = 1,
        LXW_DIAGONAL_BORDER_DOWN,
        LXW_DIAGONAL_BORDER_UP_DOWN
    }

    [CCode (cprefix = "", cname = "enum lxw_chart_types", cheader_filename = "xlsxwriter/chart.h")]
    public enum ChartTypes {
        LXW_CHART_NONE = 0,
        LXW_CHART_AREA,
        LXW_CHART_AREA_STACKED,
        LXW_CHART_AREA_STACKED_PERCENT,
        LXW_CHART_BAR,
        LXW_CHART_BAR_STACKED,
        LXW_CHART_BAR_STACKED_PERCENT,
        LXW_CHART_COLUMN,
        LXW_CHART_COLUMN_STACKED,
        LXW_CHART_COLUMN_STACKED_PERCENT,
        LXW_CHART_DOUGHNUT,
        LXW_CHART_LINE,
        LXW_CHART_LINE_STACKED,
        LXW_CHART_LINE_STACKED_PERCENT,
        LXW_CHART_PIE,
        LXW_CHART_SCATTER,
        LXW_CHART_SCATTER_STRAIGHT,
        LXW_CHART_SCATTER_STRAIGHT_WITH_MARKERS,
        LXW_CHART_SCATTER_SMOOTH,
        LXW_CHART_SCATTER_SMOOTH_WITH_MARKERS,
        LXW_CHART_RADAR,
        LXW_CHART_RADAR_WITH_MARKERS,
        LXW_CHART_RADAR_FILLED,
        LXW_CHART_STOCK,
        LXW_CHART_COMBO,
        LXW_CHART_COMBO_AREA_STACKED,
        LXW_CHART_COMBO_BAR_CLUSTERED,
        LXW_CHART_COMBO_BAR_STACKED,
        LXW_CHART_COMBO_COLUMN_CLUSTERED,
        LXW_CHART_COMBO_COLUMN_STACKED,
        LXW_CHART_COMBO_COLUMN_LINE,
        LXW_CHART_COMBO_COLUMN_LINE_SECONDARY,
        LXW_CHART_COMBO_COLUMN_AREA,
        LXW_CHART_COMBO_SCATTER_LINE,
        LXW_CHART_COMBO_SCATTER_LINE_SECONDARY
    }

    [CCode (cprefix = "", cname = "enum lxw_chart_series_order", cheader_filename = "xlsxwriter/chart.h")]
    public enum ChartSeriesOrder {
        LXW_CHART_COLUMN_SERIES,
        LXW_CHART_BAR_SERIES,
        LXW_CHART_LINE_SERIES,
        LXW_CHART_AREA_SERIES,
        LXW_CHART_SCATTER_SERIES,
        LXW_CHART_RADAR_SERIES,
        LXW_CHART_STOCK_SERIES,
        LXW_CHART_DOUGHNUT_SERIES,
        LXW_CHART_PIE_SERIES
    }

    [CCode (cprefix = "", cname = "lxw_chart_axis_type", cheader_filename = "xlsxwriter/chart.h")]
    public enum ChartAxisType {
        LXW_CHART_AXIS_TYPE_X,
        LXW_CHART_AXIS_TYPE_Y
    }

    [CCode (cprefix = "", cname = "enum lxw_validation_boolean", cheader_filename = "xlsxwriter/worksheet.h")]
    public enum ValidationBoolean {
        LXW_VALIDATION_DEFAULT,
        LXW_VALIDATION_OFF,
        LXW_VALIDATION_ON
    }

    [CCode (cprefix = "", cname = "enum lxw_validation_types", cheader_filename = "xlsxwriter/worksheet.h")]
    public enum ValidationTypes {
        LXW_VALIDATION_TYPE_NONE,
        LXW_VALIDATION_TYPE_INTEGER,
        LXW_VALIDATION_TYPE_INTEGER_FORMULA,
        LXW_VALIDATION_TYPE_DECIMAL,
        LXW_VALIDATION_TYPE_DECIMAL_FORMULA,
        LXW_VALIDATION_TYPE_LIST,
        LXW_VALIDATION_TYPE_LIST_FORMULA,
        LXW_VALIDATION_TYPE_DATE,
        LXW_VALIDATION_TYPE_DATE_FORMULA,
        LXW_VALIDATION_TYPE_TIME,
        LXW_VALIDATION_TYPE_TIME_FORMULA,
        LXW_VALIDATION_TYPE_LENGTH,
        LXW_VALIDATION_TYPE_LENGTH_FORMULA,
        LXW_VALIDATION_TYPE_CUSTOM_FORMULA,
        LXW_VALIDATION_TYPE_ANY
    }

    [CCode (cprefix = "", cname = "enum lxw_validation_criteria", cheader_filename = "xlsxwriter/worksheet.h")]
    public enum ValidationCriteria {
        LXW_VALIDATION_CRITERIA_NONE,
        LXW_VALIDATION_CRITERIA_BETWEEN,
        LXW_VALIDATION_CRITERIA_NOT_BETWEEN,
        LXW_VALIDATION_CRITERIA_EQUAL_TO,
        LXW_VALIDATION_CRITERIA_NOT_EQUAL_TO,
        LXW_VALIDATION_CRITERIA_GREATER_THAN,
        LXW_VALIDATION_CRITERIA_LESS_THAN,
        LXW_VALIDATION_CRITERIA_GREATER_THAN_OR_EQUAL_TO,
        LXW_VALIDATION_CRITERIA_LESS_THAN_OR_EQUAL_TO
    }

    [CCode (cprefix = "", cname = "enum lxw_conditional_format_types", cheader_filename = "xlsxwriter/worksheet.h")]
    public enum ConditionalFormatTypes {
        LXW_CONDITIONAL_TYPE_NONE,
        LXW_CONDITIONAL_TYPE_CELL,
        LXW_CONDITIONAL_TYPE_TEXT,
        LXW_CONDITIONAL_TYPE_TIME_PERIOD,
        LXW_CONDITIONAL_TYPE_AVERAGE,
        LXW_CONDITIONAL_TYPE_DUPLICATE,
        LXW_CONDITIONAL_TYPE_UNIQUE,
        LXW_CONDITIONAL_TYPE_TOP,
        LXW_CONDITIONAL_TYPE_BOTTOM,
        LXW_CONDITIONAL_TYPE_BLANKS,
        LXW_CONDITIONAL_TYPE_NO_BLANKS,
        LXW_CONDITIONAL_TYPE_ERRORS,
        LXW_CONDITIONAL_TYPE_NO_ERRORS,
        LXW_CONDITIONAL_TYPE_FORMULA,
        LXW_CONDITIONAL_2_COLOR_SCALE,
        LXW_CONDITIONAL_3_COLOR_SCALE,
        LXW_CONDITIONAL_DATA_BAR,
        LXW_CONDITIONAL_TYPE_ICON_SETS
    }

    [CCode (cname = "lxw_workbook_options", cheader_filename = "xlsxwriter/workbook.h")]
    public struct WorkbookOptions {
        public uint8 constant_memory;
        public unowned string tmpdir;
        public uint8 use_zip64;
    }

    [CCode (cname = "lxw_doc_properties", cheader_filename = "xlsxwriter/workbook.h")]
    public struct DocProperties {
        public unowned string title;
        public unowned string subject;
        public unowned string author;
        public unowned string manager;
        public unowned string company;
        public unowned string category;
        public unowned string keywords;
        public unowned string comments;
        public unowned string status;
        public unowned string hyperlink_base;
        public TimeT created;
    }

    [CCode (cname = "lxw_format", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/format.h")]
    [Compact]
    public class Format {
        [CCode (cname = "format_set_font_name")]
        public void set_font_name(string name);
        [CCode (cname = "format_set_font_size")]
        public void set_font_size(double size);
        [CCode (cname = "format_set_font_color")]
        public void set_font_color(ColorT color);
        [CCode (cname = "format_set_bold")]
        public void set_bold();
        [CCode (cname = "format_set_italic")]
        public void set_italic();
        [CCode (cname = "format_set_underline")]
        public void set_underline(FormatUnderlines underline);
        [CCode (cname = "format_set_font_strikeout")]
        public void set_strikethrough();
        [CCode (cname = "format_set_font_script")]
        public void set_font_script(FormatScripts script);
        [CCode (cname = "format_set_num_format")]
        public void set_num_format(string format);
        [CCode (cname = "format_set_unlocked")]
        public void set_unlocked();
        [CCode (cname = "format_set_hidden")]
        public void set_hidden();
        [CCode (cname = "format_set_align")]
        public void set_align(FormatAlignments alignment);
        [CCode (cname = "format_set_rotation")]
        public void set_rotation(int angle);
        [CCode (cname = "format_set_indent")]
        public void set_indent(int level);
        [CCode (cname = "format_set_shrink")]
        public void set_shrink();
        [CCode (cname = "format_set_text_wrap")]
        public void set_text_wrap();

        [CCode (cname = "format_set_bg_color")]
        public void set_bg_color(ColorT color);
        [CCode (cname = "format_set_fg_color")]
        public void set_fg_color(ColorT color);
        [CCode (cname = "format_set_pattern")]
        public void set_pattern(uint8 pattern);
        [CCode (cname = "format_set_border")]
        public void set_border(uint8 style);
        [CCode (cname = "format_set_bottom")]
        public void set_bottom(uint8 style);
        [CCode (cname = "format_set_top")]
        public void set_top(uint8 style);
        [CCode (cname = "format_set_left")]
        public void set_left(uint8 style);
        [CCode (cname = "format_set_right")]
        public void set_right(uint8 style);
        [CCode (cname = "format_set_border_color")]
        public void set_border_color(ColorT color);
        [CCode (cname = "format_set_bottom_color")]
        public void set_bottom_color(ColorT color);
        [CCode (cname = "format_set_top_color")]
        public void set_top_color(ColorT color);
        [CCode (cname = "format_set_left_color")]
        public void set_left_color(ColorT color);
        [CCode (cname = "format_set_right_color")]
        public void set_right_color(ColorT color);
        [CCode (cname = "format_set_diag_type")]
        public void set_diag_type(FormatDiagonalTypes type);
        [CCode (cname = "format_set_diag_color")]
        public void set_diag_color(ColorT color);
        [CCode (cname = "format_set_diag_border")]
        public void set_diag_border(uint8 style);
    }

    [CCode (cname = "lxw_chart", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/chart.h")]
    [Compact]
    public class Chart {
        [CCode (cname = "chart_add_series")]
        public Series add_series(string? categories, string? values);
        [CCode (cname = "chart_title_set_name")]
        public void set_title(string name);
        [CCode (cname = "chart_legend_set_position")]
        public void set_legend(uint8 position);
        [CCode (cname = "chart_axis_get")]
        public unowned Axis axis_get(ChartAxisType axis_type);
    }

    [CCode (cname = "lxw_chart_series", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/chart.h")]
    [Compact]
    public class Series {
        [CCode (cname = "chart_series_set_name")]
        public void set_name(string name);
        [CCode (cname = "chart_series_set_categories")]
        public void set_categories(string categories);
        [CCode (cname = "chart_series_set_values")]
        public void set_values(string values);
    }

    [CCode (cname = "lxw_chart_axis", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/chart.h")]
    [Compact]
    public class Axis {
        [CCode (cname = "chart_axis_set_name")]
        public void set_name(string name);
        [CCode (cname = "chart_axis_set_min")]
        public void set_min(double min);
        [CCode (cname = "chart_axis_set_max")]
        public void set_max(double max);
        [CCode (cname = "chart_axis_set_major_unit")]
        public void set_major_unit(double unit);
        [CCode (cname = "chart_axis_set_minor_unit")]
        public void set_minor_unit(double unit);
    }

    [CCode (cname = "lxw_worksheet", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/worksheet.h")]
    [Compact]
    public class Worksheet {
        [CCode (cname = "worksheet_write_string")]
        public Error write_string(uint32 row, uint32 col, string string, Format? format);
        [CCode (cname = "worksheet_write_number")]
        public Error write_number(uint32 row, uint32 col, double number, Format? format);
        [CCode (cname = "worksheet_write_formula")]
        public Error write_formula(uint32 row, uint32 col, string formula, Format? format);
        [CCode (cname = "worksheet_write_formula_num")]
        public Error write_formula_num(uint32 row, uint32 col, string formula, double result, Format? format);
        [CCode (cname = "worksheet_write_blank")]
        public Error write_blank(uint32 row, uint32 col, Format? format);
        [CCode (cname = "worksheet_write_boolean")]
        public Error write_boolean(uint32 row, uint32 col, bool value, Format? format);
        [CCode (cname = "worksheet_write_datetime")]
        public Error write_datetime(uint32 row, uint32 col, DateTime datetime, Format? format);
        [CCode (cname = "worksheet_write_url")]
        public Error write_url(uint32 row, uint32 col, string url, Format? format);
        [CCode (cname = "worksheet_write_url_opt")]
        public Error write_url_opt(uint32 row, uint32 col, string url, Format? format, string? string, string? tooltip);
        [CCode (cname = "worksheet_insert_image")]
        public Error insert_image(uint32 row, uint32 col, string filename);
        [CCode (cname = "worksheet_insert_image_opt")]
        public Error insert_image_opt(uint32 row, uint32 col, string filename, ImageOptions? options);
        [CCode (cname = "worksheet_insert_chart")]
        public Error insert_chart(uint32 row, uint32 col, Chart chart);
        [CCode (cname = "worksheet_insert_chart_opt")]
        public Error insert_chart_opt(uint32 row, uint32 col, Chart chart, ChartOptions? options);
        [CCode (cname = "worksheet_set_column")]
        public Error set_column(uint32 first_col, uint32 last_col, double width, Format? format);
        [CCode (cname = "worksheet_set_column_pixels")]
        public Error set_column_pixels(uint32 first_col, uint32 last_col, uint32 width, Format? format);
        [CCode (cname = "worksheet_set_row")]
        public Error set_row(uint32 row, double height, Format? format);
        [CCode (cname = "worksheet_set_row_pixels")]
        public Error set_row_pixels(uint32 row, uint32 height, Format? format);
        [CCode (cname = "worksheet_set_default_row")]
        public void set_default_row(double height, uint8 hide_unused_rows);
        [CCode (cname = "worksheet_merge_range")]
        public Error merge_range(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col, string string, Format? format);
        [CCode (cname = "worksheet_set_selection")]
        public void set_selection(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col);
        [CCode (cname = "worksheet_set_row_opt")]
        public Error set_row_opt(uint32 row, double height, Format? format, RowColOptions? options);
        [CCode (cname = "worksheet_set_column_opt")]
        public Error set_column_opt(uint32 first_col, uint32 last_col, double width, Format? format, RowColOptions? options);
        [CCode (cname = "worksheet_outline_settings")]
        public void outline_settings(uint8 visible, uint8 symbols_below, uint8 symbols_right, uint8 auto_style);
        [CCode (cname = "worksheet_set_zoom")]
        public void set_zoom(uint16 zoom);
        [CCode (cname = "worksheet_set_tab_color")]
        public void set_tab_color(ColorT color);
        [CCode (cname = "worksheet_protect")]
        public void protect(string? password, WorksheetProtection? options);
        [CCode (cname = "worksheet_gridlines")]
        public void gridlines(Gridlines option);
        [CCode (cname = "worksheet_center_horizontally")]
        public void center_horizontally();
        [CCode (cname = "worksheet_center_vertically")]
        public void center_vertically();
        [CCode (cname = "worksheet_set_landscape")]
        public void set_landscape();
        [CCode (cname = "worksheet_set_portrait")]
        public void set_portrait();
        [CCode (cname = "worksheet_set_page_view")]
        public void set_page_view();
        [CCode (cname = "worksheet_set_paper")]
        public void set_paper(uint8 paper_size);
        [CCode (cname = "worksheet_print_across")]
        public void print_across();
        [CCode (cname = "worksheet_print_black_and_white")]
        public void print_black_and_white();
        [CCode (cname = "worksheet_set_print_scale")]
        public void set_print_scale(uint16 scale);
        [CCode (cname = "worksheet_fit_to_pages")]
        public void fit_to_pages(uint16 width, uint16 height);
        [CCode (cname = "worksheet_set_start_page")]
        public void set_start_page(uint16 start_page);
        [CCode (cname = "worksheet_print_area")]
        public Error print_area(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col);
        [CCode (cname = "worksheet_repeat_rows")]
        public Error repeat_rows(uint32 first_row, uint32 last_row);
        [CCode (cname = "worksheet_repeat_columns")]
        public Error repeat_columns(uint32 first_col, uint32 last_col);
        [CCode (cname = "worksheet_set_header")]
        public Error set_header(string header);
        [CCode (cname = "worksheet_set_footer")]
        public Error set_footer(string footer);
        [CCode (cname = "worksheet_set_margins")]
        public void set_margins(double left, double right, double top, double bottom);
        [CCode (cname = "worksheet_hide")]
        public void hide();
        [CCode (cname = "worksheet_activate")]
        public void activate();
        [CCode (cname = "worksheet_select")]
        public void select();
        [CCode (cname = "worksheet_set_first_sheet")]
        public void set_first_sheet();
        [CCode (cname = "worksheet_freeze_panes")]
        public void freeze_panes(uint32 row, uint32 col);
        [CCode (cname = "worksheet_freeze_panes_opt")]
        public void freeze_panes_opt(uint32 row, uint32 col, uint8 top_row, uint8 first_col);
        [CCode (cname = "worksheet_split_panes")]
        public void split_panes(double row, double col);
        [CCode (cname = "worksheet_split_panes_opt")]
        public void split_panes_opt(double row, double col, uint32 top_row, uint32 first_col);
        [CCode (cname = "worksheet_data_validation_cell")]
        public Error data_validation_cell(uint32 row, uint32 col, DataValidation validation);
        [CCode (cname = "worksheet_data_validation_range")]
        public Error data_validation_range(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col, DataValidation validation);
        [CCode (cname = "worksheet_conditional_format_cell")]
        public Error conditional_format_cell(uint32 row, uint32 col, ConditionalFormat format);
        [CCode (cname = "worksheet_conditional_format_range")]
        public Error conditional_format_range(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col, ConditionalFormat format);
        [CCode (cname = "worksheet_write_comment")]
        public Error write_comment(uint32 row, uint32 col, string comment);
        [CCode (cname = "worksheet_write_comment_opt")]
        public Error write_comment_opt(uint32 row, uint32 col, string comment, CommentOptions? options);
        [CCode (cname = "worksheet_show_comments")]
        public void show_comments();
        [CCode (cname = "worksheet_set_comments_author")]
        public void set_comments_author(string author);
        [CCode (cname = "worksheet_autofilter")]
        public Error autofilter(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col);
        [CCode (cname = "worksheet_add_table")]
        public Error add_table(uint32 first_row, uint32 first_col, uint32 last_row, uint32 last_col, TableOptions? options);
        [CCode (cname = "worksheet_set_vba_name")]
        public Error set_vba_name(string name);
    }

    [CCode (cname = "lxw_chartsheet", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/chartsheet.h")]
    [Compact]
    public class Chartsheet {
        [CCode (cname = "chartsheet_set_chart")]
        public Error set_chart(Chart chart);
        [CCode (cname = "chartsheet_set_chart_opt")]
        public Error set_chart_opt(Chart chart, ChartOptions? options);
        [CCode (cname = "chartsheet_activate")]
        public void activate();
        [CCode (cname = "chartsheet_select")]
        public void select();
        [CCode (cname = "chartsheet_hide")]
        public void hide();
        [CCode (cname = "chartsheet_set_first_sheet")]
        public void set_first_sheet();
        [CCode (cname = "chartsheet_set_zoom")]
        public void set_zoom(uint16 zoom);
        [CCode (cname = "chartsheet_set_tab_color")]
        public void set_tab_color(ColorT color);
        [CCode (cname = "chartsheet_protect")]
        public void protect(string? password, WorksheetProtection? options);
        [CCode (cname = "chartsheet_set_landscape")]
        public void set_landscape();
        [CCode (cname = "chartsheet_set_portrait")]
        public void set_portrait();
        [CCode (cname = "chartsheet_set_paper")]
        public void set_paper(uint8 paper_size);
        [CCode (cname = "chartsheet_set_margins")]
        public void set_margins(double left, double right, double top, double bottom);
        [CCode (cname = "chartsheet_set_header")]
        public Error set_header(string header);
        [CCode (cname = "chartsheet_set_footer")]
        public Error set_footer(string footer);
    }

    [CCode (cname = "lxw_workbook", has_type_id = false, free_function = "", cheader_filename = "xlsxwriter/workbook.h")]
    [Compact]
    public class Workbook {
        [CCode (cname = "workbook_new")]
        public Workbook(string filename);
        [CCode (cname = "workbook_new_opt")]
        public Workbook.opt(string filename, WorkbookOptions options);
        [CCode (cname = "workbook_add_worksheet")]
        public Worksheet add_worksheet(string? sheetname);
        [CCode (cname = "workbook_add_chartsheet")]
        public Chartsheet add_chartsheet(string? sheetname);
        [CCode (cname = "workbook_add_format")]
        public Format add_format();
        [CCode (cname = "workbook_add_chart")]
        public Chart add_chart(ChartTypes chart_type);
        [CCode (cname = "workbook_close")]
        public Error close();
        [CCode (cname = "workbook_set_properties")]
        public Error set_properties(DocProperties properties);
        [CCode (cname = "workbook_set_custom_property_string")]
        public Error set_custom_property_string(string name, string value);
        [CCode (cname = "workbook_set_custom_property_number")]
        public Error set_custom_property_number(string name, double value);
        [CCode (cname = "workbook_set_custom_property_boolean")]
        public Error set_custom_property_boolean(string name, uint8 value);
        [CCode (cname = "workbook_set_custom_property_datetime")]
        public Error set_custom_property_datetime(string name, DateTime datetime);
        [CCode (cname = "workbook_define_name")]
        public Error define_name(string name, string formula);
        [CCode (cname = "workbook_get_default_url_format")]
        public Format get_default_url_format();
        [CCode (cname = "workbook_get_worksheet_by_name")]
        public Worksheet get_worksheet_by_name(string name);
        [CCode (cname = "workbook_get_chartsheet_by_name")]
        public Chartsheet get_chartsheet_by_name(string name);
        [CCode (cname = "workbook_validate_sheet_name")]
        public Error validate_sheet_name(string sheetname);
        [CCode (cname = "workbook_add_vba_project")]
        public Error add_vba_project(string filename);
        [CCode (cname = "workbook_set_vba_name")]
        public Error set_vba_name(string name);
        [CCode (cname = "workbook_read_only_recommended")]
        public void read_only_recommended();
    }

    [CCode (cprefix = "", cname = "enum lxw_gridlines", cheader_filename = "xlsxwriter/worksheet.h")]
    public enum Gridlines {
        LXW_HIDE_ALL_GRIDLINES,
        LXW_SHOW_SCREEN_GRIDLINES,
        LXW_SHOW_PRINT_GRIDLINES,
        LXW_SHOW_ALL_GRIDLINES
    }

    [CCode (cprefix = "", cname = "enum lxw_conditional_criteria", cheader_filename = "xlsxwriter/worksheet.h")]
    public enum ConditionalCriteria {
        LXW_CONDITIONAL_CRITERIA_NONE,
        LXW_CONDITIONAL_CRITERIA_EQUAL_TO,
        LXW_CONDITIONAL_CRITERIA_NOT_EQUAL_TO,
        LXW_CONDITIONAL_CRITERIA_GREATER_THAN,
        LXW_CONDITIONAL_CRITERIA_LESS_THAN,
        LXW_CONDITIONAL_CRITERIA_GREATER_THAN_OR_EQUAL_TO,
        LXW_CONDITIONAL_CRITERIA_LESS_THAN_OR_EQUAL_TO,
        LXW_CONDITIONAL_CRITERIA_BETWEEN,
        LXW_CONDITIONAL_CRITERIA_NOT_BETWEEN,
        LXW_CONDITIONAL_CRITERIA_TEXT_CONTAINING,
        LXW_CONDITIONAL_CRITERIA_TEXT_NOT_CONTAINING,
        LXW_CONDITIONAL_CRITERIA_TEXT_BEGINS_WITH,
        LXW_CONDITIONAL_CRITERIA_TEXT_ENDS_WITH,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_YESTERDAY,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_TODAY,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_TOMORROW,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_7_DAYS,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_WEEK,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_THIS_WEEK,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_NEXT_WEEK,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_MONTH,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_THIS_MONTH,
        LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_NEXT_MONTH,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_ABOVE,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_BELOW,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_ABOVE_OR_EQUAL,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_BELOW_OR_EQUAL,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_1_STD_DEV_ABOVE,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_1_STD_DEV_BELOW,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_2_STD_DEV_ABOVE,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_2_STD_DEV_BELOW,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_3_STD_DEV_ABOVE,
        LXW_CONDITIONAL_CRITERIA_AVERAGE_3_STD_DEV_BELOW,
        LXW_CONDITIONAL_CRITERIA_TOP_OR_BOTTOM_PERCENT
    }

    [CCode (cname = "lxw_row_col_options", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct RowColOptions {
        public uint8 hidden;
        public uint8 level;
        public uint8 collapsed;
    }

    [CCode (cname = "lxw_image_options", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct ImageOptions {
        public int32 x_offset;
        public int32 y_offset;
        public double x_scale;
        public double y_scale;
        public uint8 object_position;
        public unowned string? description;
        public uint8 decorative;
        public unowned string? url;
        public unowned string? tip;
    }

    [CCode (cname = "lxw_chart_options", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct ChartOptions {
        public int32 x_offset;
        public int32 y_offset;
        public double x_scale;
        public double y_scale;
        public uint8 object_position;
        public unowned string? description;
        public uint8 decorative;
    }

    [CCode (cname = "lxw_protection", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct WorksheetProtection {
        public uint8 no_select_locked_cells;
        public uint8 no_select_unlocked_cells;
        public uint8 format_cells;
        public uint8 format_columns;
        public uint8 format_rows;
        public uint8 insert_columns;
        public uint8 insert_rows;
        public uint8 insert_hyperlinks;
        public uint8 delete_columns;
        public uint8 delete_rows;
        public uint8 sort;
        public uint8 autofilter;
        public uint8 pivot_tables;
        public uint8 scenarios;
        public uint8 objects;
        public uint8 no_content;
        public uint8 no_objects;
    }

    [CCode (cname = "lxw_data_validation", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct DataValidation {
        public ValidationTypes validate;
        public ValidationCriteria criteria;
        public ValidationBoolean ignore_blank;
        public ValidationBoolean show_input;
        public ValidationBoolean show_error;
        public uint8 error_type;
        public ValidationBoolean dropdown;
        public double value_number;
        public unowned string? value_formula;
        [CCode (array_length = false)]
        public unowned string?[]? value_list;
        public DateTime value_datetime;
        public double minimum_number;
        public unowned string? minimum_formula;
        public DateTime minimum_datetime;
        public double maximum_number;
        public unowned string? maximum_formula;
        public DateTime maximum_datetime;
        public unowned string? input_title;
        public unowned string? input_message;
        public unowned string? error_title;
        public unowned string? error_message;
    }

    [CCode (cname = "lxw_conditional_format", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct ConditionalFormat {
        public ConditionalFormatTypes type;
        public ConditionalCriteria criteria;
        public double value;
        public unowned string? value_string;
        public unowned Format? format;
        public double min_value;
        public unowned string? min_value_string;
        public uint8 min_rule_type;
        public double mid_value;
        public unowned string? mid_value_string;
        public uint8 mid_rule_type;
        public double max_value;
        public unowned string? max_value_string;
        public uint8 max_rule_type;
        public uint8 bar_only;
        public uint8 data_bar_2010;
        public uint8 bar_solid;
        public uint8 bar_negative_color_same;
        public uint8 bar_negative_border_color_same;
        public uint8 bar_no_border;
        public uint8 bar_direction;
        public uint8 bar_axis_position;
        public uint8 icon_style;
        public uint8 reverse_icons;
        public uint8 icons_only;
        public unowned string? multi_range;
        public uint8 stop_if_true;
    }

    [CCode (cname = "lxw_comment_options", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct CommentOptions {
        public uint8 visible;
        public unowned string? author;
        public uint16 width;
        public uint16 height;
        public double x_scale;
        public double y_scale;
        public ColorT color;
        public unowned string? font_name;
        public double font_size;
        public uint8 font_family;
        public uint32 start_row;
        public uint32 start_col;
        public int32 x_offset;
        public int32 y_offset;
    }

    [CCode (cname = "lxw_table_options", cheader_filename = "xlsxwriter/worksheet.h")]
    public struct TableOptions {
        public unowned string? name;
        public uint8 no_header_row;
        public uint8 no_autofilter;
        public uint8 no_banded_rows;
        public uint8 banded_columns;
        public uint8 first_column;
        public uint8 last_column;
        public uint8 style_type;
        public uint8 style_type_number;
        public uint8 total_row;
        // `columns` (per-column header/formula/format overrides) is not bound;
        // pass null to use default sequential headers.
    }

    [CCode (cname = "LXW_VERSION", cheader_filename = "xlsxwriter.h")]
    public const string VERSION;

    [CCode (cname = "LXW_VERSION_ID", cheader_filename = "xlsxwriter.h")]
    public const int VERSION_ID;

    [CCode (cname = "lxw_strerror", cheader_filename = "xlsxwriter/common.h")]
    public unowned string strerror(Error errnum);

}

