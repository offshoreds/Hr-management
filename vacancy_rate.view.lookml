- view: vacancy_rate
  sql_table_name: LOOKER.VACANCY_RATE
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: department_name
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME

  - dimension: employee_headcount
    type: string
    sql: ${TABLE}.EMPLOYEE_HEADCOUNT

  - dimension: vacancy_rate
    type: string
    sql: ${TABLE}.VACANCY_RATE

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
    #MEASURES
    
  - measure: employee_headcount_m
    type: sum
    label: 'Employee Headcount'
    value_format: '0'
    sql: ${employee_headcount}

  - measure: vacancy_rate_m
    label: 'Vacancy Rate'
    type: sum
    value_format: '0\%'
    sql: ${vacancy_rate}
    

  - measure: count
    type: count
    drill_fields: [id, department_name]