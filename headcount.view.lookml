- view: headcount
  sql_table_name: LOOKER.HEADCOUNT
  fields:

  - dimension: Id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: Contingent_head_count
    type: string
    sql: ${TABLE}.CONTINGENT_HEAD_COUNT

  - dimension: Department_name
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME

  - dimension: Emp_headcount
    type: string
    sql: ${TABLE}.EMP_HEADCOUNT

  - dimension: Turnover
    type: string
    sql: ${TABLE}.TURNOVER

  - dimension: Year
    type: string
    sql: ${TABLE}.YEAR
    
  - dimension: Quarter
    type: string
    sql: ${TABLE}.QUARTER


    
    
      
    # measures
  
  - measure: Contingent_emp
    label: ' Permanent Employees'
    type: sum
    value_format: '#,##0'
    sql: ${Contingent_head_count}
    filters: 
        Year: '2014,2015,2016'
    links:
    - label: Recruitment Details
      url: /dashboards/40
        
  - measure: Contingent_emp_2015
    label: ' Permanent Employees 2015'
    type: sum
    value_format: '#,##0'
    sql: ${Contingent_head_count}
    filters: 
        Year: '2015'
        
        
  - measure: retirement_emp
    label: ' Retirement Employees'
    type: sum
    value_format: '#,##0'
    sql: ${Contingent_head_count}/100
    links: 
    - label: Workforce Effectiveness Details
      url: /dashboards/41
    
        
  - measure: Retirement_emp_2015
    label: ' Retirement Employees 2015'
    type: sum
    value_format: '#,##0'
    sql: ${Contingent_head_count}/100
    filters: 
        Year: '2015'
  
  - measure: Employees
    label: 'Contingent Employees'
    type: sum
    value_format: '#,##0'
    sql: ${Emp_headcount}
    filters: 
        Year: '2014,2015,2016'
        
  - measure: Emp_Turnover
    label: 'Turnover %'
    type: sum
    value_format: '0.##\%'
    sql: ${Turnover}/100
    filters: 
        Year: '2014,2015,2016'
    links:
    - label: Recruitment Details
      url: /dashboards/40
        
        
  - measure: Emp_Turnover_2015
    label: 'Employee Turnover'
    value_format: '0.##\%'
    type: sum
    sql: ${Turnover}/100
    filters: 
        Year: '2015'
        
        
  - measure: count
    hidden: true
    type: count
    drill_fields: [id, department_name]
    
  - measure: Total_Emp_2015
    label: ' Employees 2015'
    type: sum
    value_format: '#,##0'
    sql:  ${Contingent_head_count}+${Emp_headcount}
    filters: 
        Year: '2015'
        Quarter: 'Q4'
    
    
  - measure: Total_Emp
    label: 'Total Employees'
    type: sum
    value_format: '#,##0'
    sql:  ${Contingent_head_count}+${Emp_headcount}
    filters: 
        Year: '2014,2015,2016'
        
    links: 
    - label: Workforce Effectiveness Details
      url: /dashboards/41
    
  - measure: Total_Emp_termi
    label: 'Employees Termination'
    type: sum
    value_format: '#,##0'
    sql:  ${Contingent_head_count}/2+${Emp_headcount}/500
    filters: 
        Year: '2014,2015,2016'
    links: 
    - label: Workforce Effectiveness Details
      url: /dashboards/41
        
        
  - measure: Total_Emp_termi_voluntary
    label: 'Voluntary Employees Termination'
    type: sum
    value_format: '#,##0'
    sql:  ${Contingent_head_count}/2+${Emp_headcount}/500-(${Contingent_head_count}/2+${Emp_headcount}/500)/200
    filters: 
        Year: '2014,2015,2016'
        
  - measure: Total_Emp_termi_involuntary
    label: 'Involuntary Employees Termination'
    type: sum
    value_format: '#,##0'
    sql:  (${Contingent_head_count}/2+${Emp_headcount}/500)/200
    filters: 
        Year: '2014,2015,2016'
        
        
    
  - measure: vacancy_rate
    label: 'Vacancy Rate'
    type: sum
    value_format: '#.00%'
    sql: (${Contingent_head_count}+${Emp_headcount}-${Contingent_head_count}/2+${Emp_headcount}/500)/1000000
    filters: 
        Year: '2014,2015,2016'
        
        
        
  - measure: vacancy_rate_2015
    label: 'Vacancy Rate 2015'
    type: sum
    value_format: '#.00%'
    sql: (${Contingent_head_count}+${Emp_headcount}-${Contingent_head_count}/2+${Emp_headcount}/500)/1000000
    filters: 
        Year: '2015'
  
  
  - measure: Total_Emp_2015_termi
    label: 'Employees Termination 2015'
    type: sum
    value_format: '#,##0'
    sql:  ${Contingent_head_count}+${Emp_headcount}
    filters: 
        Year: '2015'
        Quarter: 'Q1,Q2,Q3'
                   
       
