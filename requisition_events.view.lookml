- view: requisition_events
  sql_table_name: LOOKER.REQUISITION_EVENTS
  fields:

  - dimension: Openings
    type: string
    sql: ${TABLE}.OPENINGS

  - dimension: Requisition_opening
    type: string
    sql: ${TABLE}.REQUISITION_OPENING

  - dimension: Year
    type: string
    sql: ${TABLE}.YEAR


 # measures
 
  - measure: Job_openings
    type: sum
    value_format: '0'
    sql: ${Openings}/10

  - measure: Job_requisition_opening
    type: sum
    value_format: '0'
    sql: ${Requisition_opening}/10
    
  - measure: Vacancy_rate
    label: 'Vacancy Rate'
    type: avg
    value_format: '#.00\%'
    sql: ${Openings}/10
    
  - measure: requisition_filled
    type: avg
    value_format: '#.00\%'
    sql: ${Requisition_opening}/10
    
  - measure: Vacancy_fill_rate
    label: 'Vacancy Fill Rate'
    type: avg
    value_format: '#.00\%'
    sql: ${Openings}/8
 
  - measure: count
    type: count
    drill_fields: []