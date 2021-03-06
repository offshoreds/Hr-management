#- dashboard: procurement_analysis
  title: Procurement-Overview
  layout: grid
  rows:
    - elements: [Return_Amount,Invoice_Price]
      height: 110
    - elements: [Top_10_Agreement_Leakage_by_Requisitioning_BU,Top_10_Non_negotiated_Purchases_By_Supplier]
      height: 330
    - elements: [Return_Trend,Receipt_Date_Exceptions_Trend]
      height: 330

    - elements: [Top_10_Returns_By_Supplier,Top_10_Invoice_Price_Variance_by_Supplier]
      height: 330

    - elements: [Top_10_Non_negotiated_Purchases_By_Requisitioning_BU,Top_10_Receipt_Date_Exceptions_By_Supplier]
      height: 330


#  filters:

  elements:


  - name: Invoice_Price
    type: single_value
    model: Procurement
    explore: variance_supplier
    measures: [variance_supplier.invoice_amount_m]
    sorts: [variance_supplier.invoice_amount_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}
    y_axis_reversed: false
    single_value_title: Invoice Price



  - name: Return_Amount
    type: single_value
    model: Procurement
    explore: return_trend
    measures: [return_trend.return_a]
    filters:
      return_trend.year: '2014,2015,2016'
    sorts: [return_trend.return_a desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}
    label_rotation:
    colors: 'palette: Looker Classic'
    series_colors:
      __FILE: HR_Management/Procurement_Analysis.dashboard.lookml
      __LINE_NUM: 243
    value_format: $0.##,, " M"
    single_value_title: Total Return Amount




  - name: Top_10_Agreement_Leakage_by_Requisitioning_BU
    title: 'Top 10 Agreement Leakage By Requisitioning BU'
    type: looker_bar
    model: Procurement
    explore: agreement_leakage
    dimensions: [agreement_leakage.business_name]
    measures: [agreement_leakage.amount_m]
    sorts: [agreement_leakage.amount_m desc]
    limit: '10'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}


  - name: Top_10_Non_negotiated_Purchases_By_Supplier
    title: 'Top 10 Non-Negotiated Purchases By Supplier'
    type: looker_line
    model: Procurement
    explore: purchase_by_supplier
    dimensions: [purchase_by_supplier.suplier]
    measures: [purchase_by_supplier.sup_amount_m]
    sorts: [purchase_by_supplier.sup_amount_m desc]
    limit: '10'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}


  - name: Top_10_Non_negotiated_Purchases_By_Requisitioning_BU
    title: 'Top 10 Non Negotiated Purchases By Requisitioning BU'
    type: looker_area
    model: Procurement
    explore: purchase_by_bu
    dimensions: [purchase_by_bu.business_unit]
    measures: [purchase_by_bu.amount_m]
    sorts: [purchase_by_bu.amount_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    show_null_points: true
    point_style: circle
    interpolation: linear
    font_size: 12
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    co mparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    value_labels: legend
    label_type: labPer
    series_types: {}

  - name: Top_10_Receipt_Date_Exceptions_By_Supplier
    title: 'Top 10 Receipt Date Exceptions By Supplier'
    type: looker_bar
    model: Procurement
    explore: date_exception
    dimensions: [date_exception.supplier]
    measures: [date_exception.exception_amount_m]
    sorts: [date_exception.exception_amount_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}


  - name: Return_Trend
    title: 'Return Trend'
    type: looker_column
    model: Procurement
    explore: return_trend
    dimensions: [return_trend.year, return_trend.quarter]
    measures: [return_trend.return_percent_m, return_trend.return_amount_m]
    filters:
      return_trend.year: '2014,2015,2016'
    sorts: [return_trend.year, return_trend.quarter]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types:
      return_trend.return_percent_m: line
      __FILE: HR_Management/Procurement_Analysis.dashboard.lookml
      __LINE_NUM: 236
    label_rotation:
    colors: 'palette: Looker Classic'
    series_colors: {}



  - name: Receipt_Date_Exceptions_Trend
    title: 'Receipt Date Exceptions Trend'
    type: looker_column
    model: Procurement
    explore: receipt_date
    dimensions: [receipt_date.year, receipt_date.quarter]
    measures: [receipt_date.percent_reception_m, receipt_date.amount_m]
    filters:
      receipt_date.year: '2014,2015,2016'
    sorts: [receipt_date.year, receipt_date.quarter]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types:
      receipt_date.percent_reception_m: line
      receipt_date.amount_m: area
      __FILE: HR_Management/Procurement_Analysis.dashboard.lookml
      __LINE_NUM: 273



  - name: Top_10_Returns_By_Supplier
    title: 'Top 10 Returns By Supplier'
    type: looker_pie
    model: Procurement
    explore: returns_supplier
    dimensions: [returns_supplier.supplier]
    measures: [returns_supplier.returned_amount_m]
    sorts: [returns_supplier.returned_amount_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    font_size: 12
    series_types: {}
    inner_radius: 50

  - name: Top_10_Invoice_Price_Variance_by_Supplier
    title: 'Top 10 Invoice Price Variance By Supplier'
    type: looker_column
    model: Procurement
    explore: variance_supplier
    dimensions: [variance_supplier.supplier]
    measures: [variance_supplier.invoice_amount_mM, variance_supplier.invoice_percent_m]
    sorts: [variance_supplier.invoice_amount_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types:
      variance_supplier.invoice_amount_m: line
      variance_supplier.invoice_percent_m: line
    y_axis_reversed: false
