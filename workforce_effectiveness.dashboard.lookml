- dashboard: workforce_effectiveness
  title: HR-Workforce Effectiveness
  layout: grid
  rows:
    - elements: [Single_Value_Emp,Contingent_Employees_HeadCount,Supervisors,Voluntary_Termination,Involuntary_Termination]
      height: 110



    - elements: [Employees_By_Department,Employee_Trending]
      height: 380


    - elements: [Employee_Vs_SUpervisor,Employees_trend]
      height: 380

#  filters:

  elements:



  - name: Single_Value_Emp
    title: 'Employees HeadCount'
    type: single_value
    explore: headcount
    model: Human_Resource_Management
    measures: [headcount.Contingent_emp]
    sorts: [headcount.Contingent_emp desc]
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
    single_value_title: '# Permanent Employees'


  - name: Contingent_Employees_HeadCount
    title: '# Contingent Employees'
    type: single_value
    model: Human_Resource_Management
    explore: headcount
    measures: [headcount.Employees_Sum]
    sorts: [headcount.Employees_Sum desc]
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
    series_types:
      __FILE: HR_Management/workforce_effectiveness.dashboard.lookml
      __LINE_NUM: 152
    single_value_title: '# Contingent Employees'





  - name: Supervisors
    title: '# Supervisors'
    type: single_value
    model: Human_Resource_Management
    explore: supervisorreport
    measures: [supervisorreport.Supervisor_count]
    sorts: [supervisorreport.Supervisor_count desc]
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
    single_value_title: '# Supervisors'





  - name: Employee_Vs_SUpervisor
    title: 'Supervisor Span of Control'
    type: looker_column
    model: Human_Resource_Management
    explore: supervisorreport
    dimensions: [supervisorreport.Department]
    measures: [supervisorreport.Supervisor_count, supervisorreport.Emp_count]
    filters:
      supervisorreport.Year: '2015,2016'
    sorts: [supervisorreport.Supervisor_count desc]
    limit: '12'
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
    show_null_points: false
    point_style: circle
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types:
      supervisorreport.Supervisor_count: line
      __FILE: HR_Management/workforce_effectiveness.dashboard.lookml
      __LINE_NUM: 336





  - name: Employees_trend
    title: 'Employees Trend'
    type: looker_column
    model: Human_Resource_Management
    explore: headcount
    dimensions: [headcount.Year, headcount.Quarter]
    measures: [headcount.Contingent_emp_m, headcount.Employees, headcount.Total_Emp_termi_voluntary,
      headcount.Total_Emp_termi_involuntary]
    filters:
      headcount.Year: '2015,2016'
    sorts: [headcount.Year, headcount.Quarter]
    limit: '500'
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
    y_axis_combined: false
    show_y_axis_labels: false
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
    show_null_points: false
    point_style: circle
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    y_axis_reversed: false
    hidden_series: []
    column_group_spacing_ratio: 0.5
    colors: ['#62bad4', '#a9c574', '#929292', '#1f3e5a', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    series_colors: {}




  - name: Voluntary_Termination
    title: '# Voluntary Termination'
    type: single_value
    model: Human_Resource_Management
    explore: employees_trend
    measures: [employees_trend.voluntery_employees]
    sorts: [employees_trend.voluntery_employees desc]
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
    single_value_title: '# Voluntary Termination'


  - name: Involuntary_Termination
    title: '# Involuntary Termination'
    type: single_value
    model: Human_Resource_Management
    explore: employees_trend
    measures: [employees_trend.involuntary_termination_count]
    sorts: [employees_trend.involuntary_termination_count desc]
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
    single_value_title: '# Involuntary Termination'

  - name: Employees_By_Department
    title: 'Employees By Department'
    type: looker_column
    model: Human_Resource_Management
    explore: headcount
    dimensions: [headcount.Department_name]
    measures: [headcount.Employees, headcount.Contingent_emp_m]
    filters:
      headcount.Year: '2016'
      headcount.Quarter: 'Q3'
    sorts: [headcount.Employees desc]
    limit: '500'
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

  - name: Employee_Trending
    title: 'Employees Trending'
    type: looker_line
    model: Human_Resource_Management
    explore: headcount
    dimensions: [headcount.Year, headcount.Quarter]
    measures: [headcount.Employees, headcount.Contingent_emp_m]
    dynamic_fields:
    - table_calculation: yearquarter
      label: YearQuarter
      expression: concat(${headcount.Year},"-",${headcount.Quarter})
    filters:
      headcount.Year: '2015,2016'
    sorts: [headcount.Year]
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
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}
    hidden_fields: [headcount.Quarter, headcount.Year]
