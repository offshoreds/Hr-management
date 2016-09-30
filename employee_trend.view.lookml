- view: employees_trend
  sql_table_name: LOOKER.EMPLOYEES_TREND
  fields:

  - dimension: employees
    type: number
    sql: ${TABLE}.EMPLOYEES

  - dimension: involuntary_termination
    type: number
    sql: ${TABLE}.INVOLUNTARY_TERMINATION

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: voluntery
    type: number
    sql: ${TABLE}.VOLUNTERY

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  
  # measures
  
  - measure: voluntery_employees
    label: 'Voluntary Termination '
    type: sum
    value_format: '0'
    sql: ${voluntery}/10

  - measure: employees_count
    label: 'Employees'
    value_format: '0'
    type: sum
    sql: ${employees}/10

  - measure: involuntary_termination_count
    label: 'involuntary Termination'
    type: sum
    value_format: '0'
    sql: ${involuntary_termination}

  - measure: count
    type: count
    drill_fields: []
    
