- dashboard: employee_expenses
  title: HR-Employee Expenses
  layout: grid
  rows:

    - elements: [Total_Salary,Training_cost,Cost_Recruitment]
      height:  100


    - elements: [Top_Pay_Grades,Top_Cost_Centers,Top_Spenders]
      height: 300


    - elements: [Expenses_Report_Submission_By_Quarter,Recent_Employee]
      height: 330



    - elements: [Performance_Base]
      height: 330




#  filters:

  elements:

  - name: Cost_Recruitment
    title: 'Cost Per Recruitment'
    type: single_value
    model: Human_Resource_Management
    explore: salary_compression
    measures: [salary_compression.Cost_Per_Recruitment]
    sorts: [salary_compression.Cost_Per_Recruitment desc]
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




  - name: Total_Salary
    type: single_value
    model: Human_Resource_Management
    explore: threeyears_saltrend
    measures: [threeyears_saltrend.total_annual_base_salary_m]
    filters:
       threeyears_saltrend.year: '2016,2014,2015'
    sorts: [threeyears_saltrend.total_annual_base_salary_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: '25'
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
    series_types: {}
    column_group_spacing_ratio: 0.5
    label_rotation:
    show_dropoff: false





  - name: Training_cost
    title:  'Training Cost Per FTE'
    type: single_value
    model: Human_Resource_Management
    explore: salary_compression
    measures: [salary_compression.Training_Cost]
    sorts: [salary_compression.Training_Cost desc]
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



















  - name: Performance_Base
    title: 'Performance Base'
    type: table
    model: Human_Resource_Management
    explore: performance_base
    dimensions: [performance_base.performance_brand]
    measures: [performance_base.total_annual_base_salary_m,performance_base.avg_annual_base_salary_m, performance_base.full_base_salary_m,
      performance_base.max_annual_base_salary_m, performance_base.min_annual_base_salary_m]
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



  - name: Top_Spenders
    title: 'Top 5 Spenders'
    type: looker_bar
    model: Human_Resource_Management
    explore: top_spenders
    dimensions: [top_spenders.employee_name]
    measures: [top_spenders.total_spent_m]
    sorts: [top_spenders.total_spent_m desc, top_spenders.employee_name]
    limit: '5'
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
    value_labels: legend
    label_type: lab
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    inner_radius: 50





  - name: Recent_Employee
    title: 'Recent Employee Expenses'
    type: looker_line
    explore: recent_emp
    model: Human_Resource_Management
    dimensions: [recent_emp.emp]
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

  - name: Expenses_Report_Submission_By_Quarter
    title: 'Expenses Report Submission By Quarter'
    type: looker_column
    model: Human_Resource_Management
    explore: expenses_by_day
    dimensions: [expenses_by_day.Year, expenses_by_day.Quarter]
    measures: [expenses_by_day.expenses_m, expenses_by_day.reports_submitted_m]
    filters:
      expenses_by_day.Year: 2015,2016,-NULL
    sorts: [expenses_by_day.Year, expenses_by_day.Quarter]
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
      __FILE: HR_Management/employee_expenses.dashboard.lookml
      __LINE_NUM: 444




  - name: Top_Cost_Centers
    title: 'Top 5 Cost Centers'
    type: looker_pie
    model: Human_Resource_Management
    explore: top_cost_centers
    dimensions: [top_cost_centers.cost_center_name]
    measures: [top_cost_centers.total_expenses_m]
    sorts: [top_cost_centers.total_expenses_m desc]
    limit: '5'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: per
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
    series_types: {}
    inner_radius: 50

  - name: Top_Pay_Grades
    title: 'Top Pay Grades'
    type: looker_bar
    model: Human_Resource_Management
    explore: salary_compression
    dimensions: [salary_compression.pay_grade_name]
    measures: [salary_compression.pay_yearly_amount_m]
    sorts: [salary_compression.pay_yearly_amount_m desc]
    limit: '5'
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
    value_labels: legend
    label_type: per
    font_size: 12
    series_types: {}
    inner_radius: 30


