- dashboard: recruitment
  title: Recruitment
  layout: grid
  
  rows:
    - elements: [requisition_event,Recruitment_events,New_hire_view]
      height: 200
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
  
  - name: New_hire_view
    title: 'Top 5 Hires By Department '
    type: looker_line
    model: Human_Resource_Management
    explore: new_hire_view
    dimensions: [new_hire_view.department_name]
    measures: [new_hire_view.hires_m]
    filters:
      new_hire_view.department_name: -Oceaneering Worldwide,-Americas Div Ops U MorganCity,-Americas ROV UDC Operations
    sorts: [new_hire_view.hires_m desc]
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
    value_labels: legend
    label_type: labPer
    series_types: {}
 
  
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
 

  - name: requisition_event
    title: 'Requisition Event'
    model: Human_Resource_Management
    type: looker_single_record
    explore: requisition_events
    measures: [requisition_events.Job_openings, requisition_events.Vacancy_fill_rate,
      requisition_events.Vacancy_rate, requisition_events.requisition_filled, requisition_events.Job_requisition_opening]
    filters:
      requisition_events.Year: '2016,2015,2014'
    sorts: [requisition_events.Job_openings desc]
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
    show_value_labels: true
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
    label_rotation: 360
    series_types: {}
    
  - name: Recruitment_events
    title: 'Recruitment Events'
    type: looker_single_record
    explore: recruitment_events
    model: Human_Resource_Management
    measures: [recruitment_events.application_starts_m, recruitment_events.assessment_interviews_m,
      recruitment_events.hires_m, recruitment_events.offers_accepted_m, recruitment_events.offers_extended_m,
      recruitment_events.offers_rejected_m]
    sorts: [recruitment_events.application_starts_m desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
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
 
 
  - name: New_Hire_Trend
    title: 'New Hire Trend'
    type: looker_line
    explore: new_hire_trend
    dimensions: [new_hire_trend.year, new_hire_trend.month]
    measures: [new_hire_trend.new_hires_ytd_m]
    sorts: [new_hire_trend.year, new_hire_trend.month desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    model: Human_Resource_Management
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
    show_view_names: true
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
    type: looker_bar
    model: Human_Resource_Management
    explore: recruitment_stage
    dimensions: [recruitment_stage.year, recruitment_stage.quarter]
    measures: [recruitment_stage.application_start_m, recruitment_stage.offer_extended_m,
      recruitment_stage.requisition_approved_m, recruitment_stage.timetofill_m, recruitment_stage.timetohire_m]
    sorts: [recruitment_stage.application_start_m desc]
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
    show_value_labels: true
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
  
