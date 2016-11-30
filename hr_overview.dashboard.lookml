- dashboard: HR-Overview
  title: HR-Overview
  layout: grid
  rows:


    - elements: [Workforce_Effectiveness,Employee_Headcount,Total_FTE,Continget_Employees]
      height: 210


    - elements: [Recruitment,New_hires,Employees_Termination,Employees_Turnover]
      height: 210



    - elements: [Employee_Expenses,Total_Expenses,Payroll_Expenses,Highest_Salary]
      height: 210

    - elements: [Employee_Time_period]
      height: 330




#  filters:

  elements:

  - name: Workforce_Effectiveness
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Total_Emp, headcount.Total_Emp_2015]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '""'
      value_format:
      value_format_name:
    sorts: [headcount.Total_Emp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    value_format: ''
    comparison_label: Employees Headcount Year 2015
    single_value_title: ''
    hidden_fields: [headcount.Total_Emp_2015, headcount.Total_Emp]


  - name: Employee_Headcount
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Total_Emp, headcount.Total_Emp_2015]
    sorts: [headcount.Total_Emp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    value_format: '#,##0'
    comparison_label: Employees Headcount Year 2015
    single_value_title: '# Employees Headcount'

  - name: Employees_Termination
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Total_Emp_termi, headcount.Total_Emp_2015_termi]
    sorts: [headcount.Total_Emp_termi desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    value_format: ''
    comparison_label: Employees Termination Year 2015
    single_value_title: '# Employees Termination'

  - name: Continget_Employees
    title: 'Continget Employees'
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Employees_Sum, headcount.Employees_m]
    sorts: [headcount.Employees_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
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
    comparison_label: '-  2015 Contingent Employees'
    single_value_title: '# Continget Employees'



  - name: Recruitment
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Total_Emp, headcount.Total_Emp_2015]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '""'
      value_format:
      value_format_name:
    sorts: [headcount.Total_Emp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    value_format: ''
    comparison_label: Employees Headcount Year 2015
    single_value_title: ''
    hidden_fields: [headcount.Total_Emp_2015, headcount.Total_Emp]


  - name: New_hires
    type: single_value
    model: Human_Resource_Management
    explore: new_hire_trend
    measures: [new_hire_trend.new_hires_ytd_m, new_hire_trend.new_hires_ytd_m_2015]
    sorts: [new_hire_trend.new_hires_ytd_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
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
    single_value_title: '# New Hires'
    comparison_label: New Hires Previous Year 2015


  - name: Total_FTE
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Contingent_emp, headcount.Contingent_emp_2015]
    sorts: [headcount.Contingent_emp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    value_format: '#,##0'
    comparison_label: FTE Year 2015
    single_value_title: '# Total FTE'


  - name: Employees_Turnover
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Emp_Turnover, headcount.Emp_Turnover_2015]
    sorts: [headcount.Emp_Turnover desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
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
    comparison_label: Employees Turnover Year 2015
    single_value_title: '# Employees Turnover'

  - name: Employee_Expenses
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Total_Emp, headcount.Total_Emp_2015]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '""'
      value_format:
      value_format_name:
    sorts: [headcount.Total_Emp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    value_format: ''
    comparison_label: Employees Headcount Year 2015
    single_value_title: ''
    hidden_fields: [headcount.Total_Emp_2015, headcount.Total_Emp]

  - name: Total_Expenses
    type: single_value
    model: Human_Resource_Management
    explore: expenses_by_time_period
    measures: [expenses_by_time_period.amount_spent_m, expenses_by_time_period.amount_spent_m_2015]
    filters:
      expenses_by_time_period.year: '2014,2015,2016'
    sorts: [expenses_by_time_period.amount_spent_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
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
    comparison_label: Total Expenses Year 2015

  - name: Payroll_Expenses
    type: single_value
    model: Human_Resource_Management
    explore: payroll
    measures: [payroll.payroll, payroll.payroll_2015]
    filters:
      payroll.year: '2014,2015,2016'
    sorts: [payroll.payroll desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: normal
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    show_null_points: true
    point_style: none
    interpolation: linear
    value_labels: legend
    label_type: labPer
    series_types: {}
    column_group_spacing_ratio: 0.5
    single_value_title: Total Payroll Expenses
    comparison_label: Payroll Expenses Year 2015

  - name: Highest_Salary
    type: single_value
    model: Human_Resource_Management
    explore: salary_compression
    measures: [salary_compression.high_yearly_amount, salary_compression.lowest_yearly_amount_m]
    sorts: [salary_compression.high_yearly_amount desc]
    limit: '5000'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: '#40427e'
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    value_labels: legend
    label_type: per
    show_value_labels: false
    font_size: 12
    stacking: ''
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
    inner_radius: 30
    single_value_title: Highest Pay Salary
    comparison_label: Lowest Pay Salary


  - name: Employee_Time_period
    title: 'Employee Headcount Over Time Period'
    type: looker_area
    model: Human_Resource_Management
    explore: headcount
    dimensions: [headcount.Year, headcount.Quarter]
    measures: [headcount.Employees, headcount.Contingent_emp_m]
    filters:
      headcount.Year: '2015,2016'
    sorts: [headcount.Year, headcount.Quarter]
    limit: '18'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: normal
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
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#3c3a32'
    ordering: none
    show_null_labels: false
    custom_color_enabled: true
    custom_color: '#2d3030'
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    value_format: '#,##0'
    comparison_label: '# Year Headcount'
    single_value_title: '# Employee Headcount'
    colors: ['#fdbf6f', '#1f78b4', '#b2df8a', '#33a02c', '#fb9a99', '#e31a1c', '#fdbf6f',
      '#ff7f00', '#cab2d6', '#6a3d9a', '#edbc0e', '#b15928']
    series_colors: {}
