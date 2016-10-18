- dashboard: recruitment
  title: HR-Recruitment
  layout: grid
  
  rows:
    - elements: [Job_requisition,Job_Openings,Offers_Accepted,Offers_Rejected,New_Hires]
      height: 110  
  
    - elements: [Open_requisition_Overview,New_Hire_source]
      height: 330
    - elements: [Top_5_Vacancies,Recruitment_Stage,Vacancies_By_Departmemt]
      height: 330 
   
   

#  filters:

  elements:
  
  
  - name: New_Hires
    type: single_value
    model: Human_Resource_Management
    explore: new_hire_trend
    measures: [new_hire_trend.new_hires_ytd_m]
    sorts: [new_hire_trend.new_hires_ytd_m desc]
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
    show_null_points: true 
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    value_labels: legend
    label_type: labPer
    font_size: 12
    series_types: {}
    single_value_title: New Hires
  
   
  
  - name: Job_Openings
    type: single_value
    model: Human_Resource_Management
    explore: requisition_events
    measures: [requisition_events.Job_openings]
    filters:
      requisition_events.Year: '2014,2015,2016'
    sorts: [requisition_events.Job_openings desc]
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
    single_value_title: Job Openings
    
    
  - name: Job_requisition
    type: single_value
    model: Human_Resource_Management
    explore: requisition_events
    measures: [requisition_events.Job_requisition_opening]
    filters:
      requisition_events.Year: '2014,2015,2016'
    sorts: [requisition_events.Job_requisition_opening desc]
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
    single_value_title: Jobs Requested In Requisition


  

  
  
  
 
    
    

    
  - name: Offers_Accepted
    type: single_value
    model: Human_Resource_Management
    explore: recruitment_events
    measures: [recruitment_events.offers_accepted_m]
    sorts: [recruitment_events.offers_accepted_m desc]
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
    single_value_title: Offers Accepted


    
    
  - name: Offers_Rejected
    type: single_value
    model: Human_Resource_Management
    explore: recruitment_events
    measures: [recruitment_events.offers_rejected_m]
    sorts: [recruitment_events.offers_rejected_m desc]
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
    single_value_title: Offers Rejected

  

  
  - name: Open_requisition_Overview
    title: 'Top 5 Job Requisitions By Country'
    type: looker_pie
    model: Human_Resource_Management
    explore: open_requisition
    dimensions: [open_requisition.country]
    measures: [open_requisition.requisitions_m]
    filters:
      open_requisition.country: Australia,United Arab Emirates,United States,Malaysia,India
    sorts: [open_requisition.requisitions_m desc]
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
    show_null_points: true
    point_style: none
    interpolation: linear
    font_size: 12
    series_types: {}
    inner_radius: 50
  
  - name: Top_5_Vacancies
    title:  'Top 5 Vacancies'
    type: looker_bar
    model: Human_Resource_Management
    explore: top5_vacancies
    dimensions: [top5_vacancies.country_states]
    measures: [top5_vacancies.openings_m]
    sorts: [top5_vacancies.openings_m desc]
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
    column_group_spacing_ratio: 0.5
    label_rotation:
    series_types: {}

    
    
  - name: Recruitment_Stage
    title: 'Recruitment Stage'
    type: looker_column
    model: Human_Resource_Management
    explore: recruitment_stage
    dimensions: [recruitment_stage.year, recruitment_stage.quarter]
    measures: [recruitment_stage.requisition_approved_m, recruitment_stage.application_start_m,
      recruitment_stage.offer_extended_m]
    filters:
      recruitment_stage.year: '2015,2016'
    sorts: [recruitment_stage.year, recruitment_stage.quarter]
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
    value_labels: legend
    label_type: labPer
    series_types: {}
    column_group_spacing_ratio: 0.5

 
 
  - name: New_Hire_source
    title: 'New Hires By Source'
    type: looker_bar
    model: Human_Resource_Management
    explore: new_hire_source
    dimensions: [new_hire_source.source]
    measures: [new_hire_source.Employee_Hires_m]
    sorts: [new_hire_source.Employee_Hires_m desc]
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
    value_labels: legend
    label_type: labPer
    series_types: {}
    column_group_spacing_ratio: 0.3
    
    
  - name: Vacancies_By_Departmemt 
    title: 'Vacancies By Departmemt'
    type: looker_line
    model: Human_Resource_Management
    explore: vacancy_rate
    dimensions: [vacancy_rate.department_name]
    measures: [vacancy_rate.employee_headcount_m]
    filters:
      vacancy_rate.year: '2015,2016'
    sorts: [vacancy_rate.employee_headcount_m desc]
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
    show_null_points: false
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}

 
  
