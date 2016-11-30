view: recruitment_stage {
  sql_table_name: LOOKER.RECRUITMENT_STAGE ;;

  dimension: application_start {
    type: string
    sql: ${TABLE}.APPLICATION_START ;;
  }

  dimension: offer_extended {
    type: string
    sql: ${TABLE}.OFFER_EXTENDED ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: requisition_approved {
    type: string
    sql: ${TABLE}.REQUISITION_APPROVED ;;
  }

  dimension: timetofill {
    type: string
    sql: ${TABLE}.TIMETOFILL ;;
  }

  dimension: timetohire {
    type: string
    sql: ${TABLE}.TIMETOHIRE ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  #measures

  measure: application_start_m {
    label: "Application Start"
    type: sum
    value_format: "#,###"
    sql: ${application_start} ;;
  }

  measure: offer_extended_m {
    label: "Offer Extended"
    value_format: "#,###"
    type: sum
    sql: ${offer_extended} ;;
  }

  measure: requisition_approved_m {
    label: "Requisition Approved"
    type: sum
    value_format: "#,###"
    sql: ${requisition_approved} ;;
  }

  measure: timetofill_m {
    label: "Time To Fill"
    type: sum
    sql: ${timetofill} ;;
  }

  measure: timetohire_m {
    label: "Time To Hire"
    type: sum
    value_format: "0"
    sql: ${timetohire}/20 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
