- view: recruitment_events
  sql_table_name: LOOKER.RECRUITMENT_EVENTS
  fields:

  - dimension: application_hire_ratio
    type: string
    sql: ${TABLE}.APPLICATION_HIRE_RATIO

  - dimension: application_starts
    type: string
    sql: ${TABLE}.APPLICATION_STARTS

  - dimension: assessment_interviews
    type: string
    sql: ${TABLE}.ASSESSMENT_INTERVIEWS

  - dimension: avg_time_to_fill_days
    type: string
    sql: ${TABLE}.AVG_TIME_TO_FILL_DAYS

  - dimension: hires
    type: string
    sql: ${TABLE}.HIRES

  - dimension: offer_acceptance_rate
    type: string
    sql: ${TABLE}.OFFER_ACCEPTANCE_RATE

  - dimension: offers_accepted
    type: string
    sql: ${TABLE}.OFFERS_ACCEPTED

  - dimension: offers_extended
    type: string
    sql: ${TABLE}.OFFERS_EXTENDED

  - dimension: offers_rejected
    type: string
    sql: ${TABLE}.OFFERS_REJECTED
    
    
    
  # measures
    
  - measure: application_hire_ratio_m
    label: 'Application Hire Ratio'
    type: sum
    sql: ${application_hire_ratio}

  - measure: application_starts_m
    type: sum
    label: 'Application Starts'
    sql: ${application_starts}

  - measure: assessment_interviews_m
    type: sum
    label: 'Assessment Interviews'
    sql: ${assessment_interviews}

  - measure: avg_time_to_fill_days_m
    type: sum
    label: 'Avg Time To Fill Days'
    sql: ${avg_time_to_fill_days}

  - measure: hires_m
    type: sum
    label: 'Hires'
    sql: ${hires}

  - measure: offer_acceptance_rate_m
    type: sum
    label: 'Offer Acceptance Rate'
    sql: ${offer_acceptance_rate}

  - measure: offers_accepted_m
    type: sum
    label: 'Offers Accepted'
    sql: ${offers_accepted}

  - measure: offers_extended_m
    type: sum
    label: 'Offers Extended'
    sql: ${offers_extended}

  - measure: offers_rejected_m
    type: sum
    label: 'Offers Rejected'
    sql: ${offers_rejected}
  

  - measure: count
    type: count
    drill_fields: []

