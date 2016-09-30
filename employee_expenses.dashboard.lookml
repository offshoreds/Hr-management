- dashboard: employee_expenses
  title: Employee Expenses
  layout: grid
  rows:
    - elements: [three_salary_trend,Salary_Compression]
      height:  330
    - elements: [Total_Expenses_trend,Top_Cost_Centers]
      height: 330   

    - elements: [Expenses_By_category,Top_Spenders]
      height: 330
    
      
    - elements: [Expenses_By_Time_period,Recent_Employee]
      height: 330
      
    - elements: [Expenses_Report_Submission_By_Day]
      height: 330 
      
    
    - elements: [Performance_Base]
      height: 330  
    
      
    
      
#  filters:

  elements:

  - name: three_salary_trend
    title: 'Three Year Salary Trend'
    type: looker_column
    explore: threeyears_saltrend
    dimensions: [threeyears_saltrend.year]
    measures: [threeyears_saltrend.average_annual_base_salary_m, threeyears_saltrend.employee_head_count_m,
      threeyears_saltrend.total_annual_base_salary_m]
    sorts: [threeyears_saltrend.year]
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types:
      threeyears_saltrend.employee_head_count_m: line
    column_group_spacing_ratio: 0.5
    label_rotation: 280
  
  
  - name: Salary_Compression
    title: 'Salary Compression'
    type: table
    explore: salary_compression
    dimensions: [salary_compression.pay_grade_name]
    measures: [salary_compression.avg_annual_basesal_m, salary_compression.employee_headcount_m,
      salary_compression.median_annual_basesal_m, salary_compression.pay_yearly_amount_m,
      salary_compression.percent_midpoint_m]
    sorts: [salary_compression.percent_midpoint_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
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
    
  - name: Performance_Base
    title: 'Performance Base'
    type: table
    explore: performance_base
    dimensions: [performance_base.performance_brand]
    measures: [performance_base.avg_annual_base_salary_m, performance_base.full_base_salary_m,
      performance_base.max_annual_base_salary_m, performance_base.media_annual_base_salary_m,
      performance_base.min_annual_base_salary_m, performance_base.total_annual_base_salary_m]
    sorts: [performance_base.min_annual_base_salary_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
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
    
  
  - name: Total_Expenses_trend
    title: 'Total Expenses Trend'
    type: looker_area
    explore: total_expenses_trend
    dimensions: [total_expenses_trend.year, total_expenses_trend.month]
    measures: [total_expenses_trend.cumulative_expense_amount_m]
    sorts: [total_expenses_trend.cumulative_expense_amount_m desc, total_expenses_trend.month desc,
      total_expenses_trend.year desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: '24'
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    series_types: {}
  
  
  - name: Top_Cost_Centers
    title: 'Top Cost Centers By Expenses'
    type: table
    explore: top_cost_centers
    dimensions: [top_cost_centers.cost_center_number]
    measures: [top_cost_centers.total_expenses_m, top_cost_centers.total_expenses_year_ago_m]
    sorts: [top_cost_centers.total_expenses_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
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
    
  
  - name: Expenses_By_category
    title: 'Expenses By Category'
    type: looker_bar
    explore: expenses_category
    dimensions: [expenses_category.category]
    measures: [expenses_category.expense_amount_m]
    sorts: [expenses_category.expense_amount_m desc]
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
    point_style: circle
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
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
    series_types: {}
    
  - name: Top_Spenders
    title: 'Top Spenders'
    type: looker_pie
    explore: top_spenders
    dimensions: [top_spenders.employee_name]
    measures: [top_spenders.total_spent_m]
    sorts: [top_spenders.total_spent_m desc, top_spenders.employee_name]
    limit: '10'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    show_view_names: false
    show_row_numbers: true
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    
  - name: Expenses_By_Time_period
    title: 'Expenses By Time Period'
    type: looker_area
    explore: expenses_by_time_period
    dimensions: [expenses_by_time_period.year, expenses_by_time_period.quarter]
    measures: [expenses_by_time_period.amount_spent_m]
    sorts: [expenses_by_time_period.year]
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    series_types: {}
  
  
  - name: Recent_Employee
    title: 'Recent Employee Expenses'
    type: looker_line
    explore: recent_emp
    dimensions: [recent_emp.emp, recent_emp.report_status, recent_emp.emp_report_number]
    measures: [recent_emp.Total_amount_spent_m]
    sorts: [recent_emp.Total_amount_spent_m desc]
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
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types: {}
    
  - name: Expenses_Report_Submission_By_Day
    title: 'Expenses Report Submission By Day'
    type: looker_column
    explore: expenses_by_day
    dimensions: [expenses_by_day.spent_d, expenses_by_day.day]
    measures: [expenses_by_day.expenses_m, expenses_by_day.reports_submitted_m]
    sorts: [expenses_by_day.expenses_m desc]
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
      expenses_by_day.reports_submitted_m: line
      expenses_by_day.expenses_m: area


 
 