view: requisition_events {
  sql_table_name: HRM.REQUISITION_EVENTS ;;

  dimension: Openings {
    type: string
    sql: ${TABLE}.OPENINGS ;;
  }

  dimension: Requisition_opening {
    type: string
    sql: ${TABLE}.REQUISITION_OPENING ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures

  measure: Job_openings {
    type: sum
    value_format: "#,##0"
    sql: ${Openings} ;;
  }

  measure: Job_requisition_opening {
    type: sum
    value_format: "#,##0"
    sql: ${Requisition_opening} ;;
  }

  measure: Vacancy_rate {
    label: "Vacancy Rate"
    type: average
    value_format: "#.00\%"
    sql: ${Openings}/10 ;;
  }

  measure: requisition_filled {
    type: average
    value_format: "#.00\%"
    sql: ${Requisition_opening}/10 ;;
  }

  measure: Vacancy_fill_rate {
    label: "Vacancy Fill Rate"
    type: average
    value_format: "#.00\%"
    sql: ${Openings}/8 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
