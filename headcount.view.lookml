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


    
    
      
    # measures
  
  - measure: Contingent_emp
    label: ' Permanent Employees'
    type: sum
    value_format: '0'
    sql: ${Contingent_head_count}/1000

  
  - measure: Employees
    label: 'Contingent Employees'
    type: sum
    value_format: '0'
    sql: ${Emp_headcount}/1000

  - measure: Emp_Turnover
    label: 'Turnover %'
    type: sum
    
    sql: ${Turnover}/1000
    
  - measure: count
    hidden: true
    type: count
    drill_fields: [id, department_name]


