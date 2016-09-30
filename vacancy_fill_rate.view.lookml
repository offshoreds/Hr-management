- view: vacancy_fill_rate
  sql_table_name: LOOKER.VACANCY_FILL_RATE
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: department_name
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME

  - dimension: job_requisition_period
    type: string
    sql: ${TABLE}.JOB_REQUISITION_PERIOD

  - dimension: job_requisitions_opened
    type: string
    sql: ${TABLE}.JOB_REQUISITIONS_OPENED

  - dimension: total_open_requisitions
    type: string
    sql: ${TABLE}.TOTAL_OPEN_REQUISITIONS

  - dimension: vacancy_fill_rate
    type: string
    sql: ${TABLE}.VACANCY_FILL_RATE
    
  # measures
  
  - measure: job_requisition_period_m
    type: sum
    label: 'Job Requisition Period'
    sql: ${job_requisition_period}

  - measure: job_requisitions_opened_m
    type: sum
    label: 'Job Requisitions Opened'
    sql: ${job_requisitions_opened}

  - measure: total_open_requisitions_m
    type: sum
    label: 'Total Open Requisitions'
    description: job_requisition_period_m + job_requisitions_opened_m
    sql: ${job_requisition_period}+${job_requisitions_opened}

  - measure: vacancy_fill_rate_m
    type: sum
    label: 'Vacancy Fill Rate'
    value_format: '0\%'
    sql: ${total_open_requisitions}

  - measure: count
    type: count
    drill_fields: [id, department_name]

