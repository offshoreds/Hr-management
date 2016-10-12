- view: top5_vacancies
  sql_table_name: LOOKER.TOP5VACANCIES
  fields:

  - dimension: country_states
    type: string
    sql: ${TABLE}.COUNTRY_STATES

  - dimension: openings
    type: string
    sql: ${TABLE}.OPENINGS
    
    
  # measures 
  
  
  - measure: openings_m
    label: 'Openings'
    type: sum
    sql: ${openings}*3
    
  

  - measure: count
    type: count
    drill_fields: []