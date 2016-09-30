- dashboard: workforce_effectiveness
  title: Workforce Effectiveness
  layout: grid
  rows:
    - elements: [Single_Value_Emp,Contingent_Employees_HeadCount,Supervisors,Avg_employees,Voluntary_Termination,Involuntary_Termination]
      height: 110
    - elements: [Employees_Headcount,Employees_Turnover]
      height: 400
      
    - elements: [Employee_Vs_SUpervisor,Average_employees]
      height: 400
      
    - elements: [Employees_trend,employee_expenses]
      height: 350

#  filters:

  elements:
  - name: Employees_Headcount
    title: 'Contingent And Permanent Employees'
    type: looker_column
    explore: headcount
    dimensions: [headcount.Department_name]
    measures: [headcount.Employees, headcount.Contingent_emp]
    filters:
      headcount.Department_name: DEPARTMENT~SHARE~USA,DEPARTMENT~SHARE~IND,DEPARTMENT~SHARE~DEU,DEPARTMENT~SHARE~BRZ,DEPARTMENT~SHARE~AUS,DEPARTMENT~SHARE~NLD,DEPARTMENT~SHARE~NON,DEPARTMENT~SHARE~NOR,DEPARTMENT~SHARE~NUS,DEPARTMENT~SHARE~OII,DEPARTMENT~SHARE~SEA,DEPARTMENT~SHARE~SWE
    sorts: [headcount.Employees desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types:
      headcount.Emp_Turnover: line
      headcount.Employees: line
      
    
  - name: Single_Value_Emp
    title: 'Employees HeadCount'
    type: single_value
    explore: headcount
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
    single_value_title: '# Employees HeadCount'
  
  
  - name: Contingent_Employees_HeadCount
    title: '# Contingent Employees HeadCount'
    type: single_value
    explore: headcount
    measures: [headcount.Employees]
    sorts: [headcount.Employees desc]
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
    single_value_title: '# Contingent Employees HeadCount'
    
    
  - name: Employees_Turnover
    title: 'Employees and Turnover'
    type: looker_column
    model: hr_management
    explore: headcount
    dimensions: [headcount.Department_name]
    measures: [headcount.Employees, headcount.Emp_Turnover, headcount.Contingent_emp]
    filters:
      headcount.Department_name: DEPARTMENT~SHARE~USA,DEPARTMENT~SHARE~IND,DEPARTMENT~SHARE~DEU,DEPARTMENT~SHARE~BRZ,DEPARTMENT~SHARE~AUS,DEPARTMENT~SHARE~NLD,DEPARTMENT~SHARE~NON,DEPARTMENT~SHARE~NOR,DEPARTMENT~SHARE~NUS,DEPARTMENT~SHARE~OII,DEPARTMENT~SHARE~SEA,DEPARTMENT~SHARE~SWE
    sorts: [headcount.Employees desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types:
      headcount.Emp_Turnover: line
  
  
  
  - name: Supervisors
    title: '# Supervisors'
    type: single_value
    model: hr_management
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
 
  
  - name: Avg_employees
    title: '# Avg Employees Per Supervisor'
    type: single_value
    explore: supervisorreport
    measures: [supervisorreport.Average_Emp]
    sorts: [supervisorreport.Average_Emp desc]
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
    single_value_title: '# Avg Employees Per Supervisor'
    
  
  - name: Employee_Vs_SUpervisor
    title: 'Supervisor Span of Control'
    type: looker_column
    explore: supervisorreport
    dimensions: [supervisorreport.Department]
    measures: [supervisorreport.Supervisor_count, supervisorreport.Emp_count]
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
      
  
  - name: Average_employees
    title: 'Average Employees'
    type: looker_line
    explore: supervisorreport
    dimensions: [supervisorreport.Department]
    measures: [supervisorreport.Supervisor_count, supervisorreport.Average_Emp]
    sorts: [supervisorreport.Supervisor_count desc]
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
    show_null_points: false
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    
   
  - name: Employees_trend
    title: 'Employees Trend'
    type: looker_bar
    explore: employees_trend
    dimensions: [employees_trend.year]
    measures: [employees_trend.employees_count, employees_trend.voluntery_employees,
      employees_trend.involuntary_termination_count]
    filters:
      employees_trend.year: '2013,2014,2015,2016'
    sorts: [employees_trend.employees_count desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
    series_types:
       __FILE: hr_management/workforce_effectiveness.dashboard.lookml
       __LINE_NUM: 412
    column_group_spacing_ratio: 0.5
  
  
  - name: Voluntary_Termination
    title: '# Voluntary Termination'
    type: single_value
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
 
  
  - name: employee_expenses
    title: 'Employee Expenses'
    type: looker_bar
    explore: payroll
    dimensions: [payroll.year]
    measures: [payroll.payroll, payroll.support, payroll.overtime]
    filters:
      payroll.year: '2013,2014,2015,2016'
    sorts: [payroll.overtime desc]
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
 
 