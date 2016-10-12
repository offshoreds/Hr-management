- dashboard: recruitment
  title: HR-Recruitment
  layout: grid
  
  rows:
    - elements: [Job_Openings,Job_requisition,Assessment_Interviews]
      height: 110  
    - elements: [Offers_Accepted,Offers_Rejected,New_Hires]
      height: 110    
      
    - elements: [New_Hire_Trend,Open_requisition_Overview]
      height: 330
    - elements: [Top_5_Vacancies,Recruitment_Stage]
      height: 330 
    - elements: [vacancy_rate,vacancy_fill_rate]
      height: 330
    - elements: [New_Hire_source,New_HIre_retention]
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


  

  
  
  
  - name: Assessment_Interviews
    type: single_value
    model: Human_Resource_Management
    explore: recruitment_events
    measures: [recruitment_events.assessment_interviews_m]
    sorts: [recruitment_events.assessment_interviews_m desc]
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
    single_value_title: Assessment Interviews
    
    

    
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

  
  
 
  
  - name: vacancy_fill_rate
    title: 'Vacancy Fill Rate'
    type: looker_column
    model: Human_Resource_Management
    explore: vacancy_fill_rate
    dimensions: [vacancy_fill_rate.department_name]
    measures: [vacancy_fill_rate.job_requisition_period_m, vacancy_fill_rate.job_requisitions_opened_m,
      vacancy_fill_rate.total_open_requisitions_m, vacancy_fill_rate.vacancy_fill_rate_m]
    filters:
      vacancy_fill_rate.department_name: -DEPARTMENT~SHARE~ORG,-Unspecified
    sorts: [vacancy_fill_rate.job_requisition_period_m desc]
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
    value_labels: legend
    label_type: labPer
    series_types: {}
    colors: 'palette: Looker Classic'
    series_colors: {}
    column_group_spacing_ratio: 0.5
    label_rotation: 300
 
 
  
  
  
  - name: vacancy_rate
    title: 'Vacancy Rate'
    type: looker_line
    explore: vacancy_rate
    model: Human_Resource_Management
    dimensions: [vacancy_rate.department_name]
    measures: [vacancy_rate.employee_headcount_m, vacancy_rate.vacancy_rate_m]
    filters:
      vacancy_rate.department_name: -DEPARTMENT~SHARE~ORG
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
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
 

 
 
 
  - name: New_Hire_Trend
    title: 'New Hires Trend'
    type: looker_line
    model: Human_Resource_Management
    explore: new_hire_trend
    dimensions: [new_hire_trend.year, new_hire_trend.quarter]
    measures: [new_hire_trend.new_hires_ytd_m]
    sorts: [new_hire_trend.year, new_hire_trend.quarter]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    value_labels: legend
    label_type: labPer
    font_size: 12
    series_types:
      __FILE: HR_Management/Recruitment.dashboard.lookml
      __LINE_NUM: 616
  
  - name: Open_requisition_Overview
    title: 'Open Requisition Overview'
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
  
  - name: Top_5_Vacancies
    title:  'Top 5 Vacancies'
    type: looker_column
    explore: top5_vacancies
    model: Human_Resource_Management
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
    
    
  - name: Recruitment_Stage
    title: 'Recruitment Stage'
    type: looker_column
    model: Human_Resource_Management
    explore: recruitment_stage
    dimensions: [recruitment_stage.year, recruitment_stage.quarter]
    measures: [recruitment_stage.requisition_approved_m, recruitment_stage.application_start_m,
      recruitment_stage.offer_extended_m]
    sorts: [recruitment_stage.year]
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
 
  
  - name: New_HIre_retention
    title: 'New Hire Retention By Source'
    type: looker_line
    model: Human_Resource_Management
    explore: new_hire_retention
    dimensions: [new_hire_retention.source_type]
    measures: [new_hire_retention.employee_separations_m, new_hire_retention.first_service_m,
      new_hire_retention.applicant_hires_m]
    filters:
      new_hire_retention.source_type: -Not Applicable
    sorts: [new_hire_retention.employee_separations_m desc]
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}
  
