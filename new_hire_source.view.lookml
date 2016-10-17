- view: new_hire_source
  sql_table_name: LOOKER.NEW_HIRE_SOURCE
  fields:

  - dimension: department_name
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME

  - dimension: hires
    type: string
    sql: ${TABLE}.HIRES

  - dimension: source
    type: string
    sql: ${TABLE}.SOURCE

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR


 # measures
  
  - measure: Employee_Hires_m
    label: 'New Hires'
    value_format: '0'
    type: sum
    sql: ${hires}
    
  - measure: count
    type: count
    drill_fields: [department_name]
