#- dashboard: spend_performance
  title: Spend By Supplier
  layout: grid
  rows:
    - elements: [Total_Business_Units,Off_Contract_Spend_Percent,Payable_Leakage_Rate,Contract_Leakage_Percent]
      height: 120
    - elements: [Top_10_Suppliers_By_Contract Leakage,Top_10_Contract_Business_Units]
      height: 330

    - elements: [Top_Spend_Business_Units,Top_Spend_Cost_Centers,Off_Contract_Suppliers]
      height: 330

    - elements: [Suppliers_Spend_Details]
      height: 280




  elements:

  - name: Total_Business_Units
    type: single_value
    model: Spend_Analytics
    explore: contract_s_businessunits
    measures: [contract_s_businessunits.Total_Business_Units]
    sorts: [contract_s_businessunits.Total_Business_Units desc]
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
    show_view_names: true
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


  - name: Off_Contract_Spend_Percent
    type: single_value
    model: Spend_Analytics
    explore: contract_s_businessunits
    measures: [contract_s_businessunits.Offconcrat_Spend_Percent]
    sorts: [contract_s_businessunits.Offconcrat_Spend_Percent desc]
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
    show_view_names: true
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


  - name: Payable_Leakage_Rate
    type: single_value
    model: Spend_Analytics
    explore: contract_s_businessunits
    measures: [contract_s_businessunits.Payables_Leakage_rate]
    sorts: [contract_s_businessunits.Payables_Leakage_rate desc]
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
    show_view_names: true
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

  - name: Contract_Leakage_Percent
    type: single_value
    model: Spend_Analytics
    explore: contract_s_businessunits
    measures: [contract_s_businessunits.Contract_Leakage_Percentage]
    sorts: [contract_s_businessunits.Contract_Leakage_Percentage desc]
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
    show_view_names: true
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

  - name: Top_10_Suppliers_By_Contract Leakage
    type: looker_column
    model: Spend_Analytics
    explore: contract_leakage_top_supplier
    dimensions: [contract_leakage_top_supplier.suupliers_s]
    measures: [contract_leakage_top_supplier.contract_amount_ms]
    sorts: [contract_leakage_top_supplier.contract_amount_ms desc]
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
    show_y_axis_labels: false
    show_y_axis_ticks: true
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
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}


  - name: Top_10_Contract_Business_Units
    type: looker_column
    model: Spend_Analytics
    explore: contract_s_businessunits
    dimensions: [contract_s_businessunits.business_unit]
    measures: [contract_s_businessunits.spend_amount_bm, contract_s_businessunits.contract_percent_bm,
      contract_s_businessunits.contract_amount_bm]
    sorts: [contract_s_businessunits.spend_amount_bm desc]
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
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types:
      contract_s_businessunits.contract_percent_bm: line


  - name: Top_Spend_Business_Units
    type: looker_column
    model: Spend_Analytics
    explore: spend_business_units
    dimensions: [spend_business_units.business_unit_s]
    measures: [spend_business_units.spend_percent_mb, spend_business_units.spend_amount_mb]
    sorts: [spend_business_units.spend_amount_mb desc]
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types:
      spend_business_units.spend_percent_mb: line


  - name: Top_Spend_Cost_Centers
    type: looker_pie
    model: Spend_Analytics
    explore: spend_costcentres
    dimensions: [spend_costcentres.cost_centre_name]
    measures: [spend_costcentres.spend_amount_csm]
    sorts: [spend_costcentres.spend_amount_csm desc]
    limit: '5'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: lab
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    ordering: none
    show_null_labels: false
    series_types: {}

  - name: Off_Contract_Suppliers
    type: looker_bar
    model: Spend_Analytics
    explore: off_contract_suppliers
    dimensions: [off_contract_suppliers.suppliers]
    measures: [off_contract_suppliers.spend_amount_m]
    sorts: [off_contract_suppliers.spend_amount_m desc]
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
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
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


  - name: Suppliers_Spend_Details
    type: table
    model: Spend_Analytics
    explore: potential_supplier
    dimensions: [potential_supplier.supplier_name]
    measures: [potential_supplier.spend_m, potential_supplier.savings_percentage_m,
      potential_supplier.min_invoice_price_m, potential_supplier.max_invoice_price_m,
      potential_supplier.invoice_quantity_m, potential_supplier.avg_invoice_price_m]
    sorts: [potential_supplier.spend_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
