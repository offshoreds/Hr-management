- view: supervisorreport
  sql_table_name: LOOKER.SUPERVISORREPORT
  fields:

  - dimension: Id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: Avg_emp
    type: string
    sql: ${TABLE}.AVG_EMP

  - dimension: Department
    type: string
    sql: ${TABLE}.DEPARTMENT

  - dimension: Employee
    type: string
    sql: ${TABLE}.EMPLOYEE

  - dimension: Supervisor
    type: string
    sql: ${TABLE}.SUPERVISOR

  - dimension: Year
    type: string
    sql: ${TABLE}.YEAR
    
    # measures
    

  - measure: Count
    type: count
    drill_fields: [id]
    
  - measure: Emp_count
    label: 'Employees'
    value_format: '0'
    type: sum
    sql: ${Employee}/1000

  - measure: Supervisor_count
    label: 'Supervisors'
    value_format: '#,##0'
    type: sum
    sql: ${Supervisor}/100
  
  - measure: Average_Emp
    label: ' Average Employees'
    type: sum
    value_format: '0'
    sql: ${Avg_emp}/1000
    
    
    
    
    
    
    
    
    
