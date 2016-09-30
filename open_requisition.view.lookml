- view: open_requisition
  sql_table_name: LOOKER.OPEN_REQUISITION
  fields:

  - dimension: country
    type: string
    sql: ${TABLE}.COUNTRY

  - dimension: requisitions
    type: string
    sql: ${TABLE}.REQUISITIONS

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  
  # measures
  
  - measure: requisitions_m
    label: 'Open requisitions'
    type: sum
    sql: ${requisitions}
  
  - measure: count
    type: count
    drill_fields: []

