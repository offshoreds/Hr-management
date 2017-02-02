view: employees_trend {
  sql_table_name: HRM.EMPLOYEES_TREND ;;

  dimension: employees {
    type: number
    sql: ${TABLE}.EMPLOYEES ;;
  }

  dimension: involuntary_termination {
    type: number
    sql: ${TABLE}.INVOLUNTARY_TERMINATION ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: voluntery {
    type: number
    sql: ${TABLE}.VOLUNTERY ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures

  measure: voluntery_employees {
    label: "Voluntary Termination"
    type: sum
    value_format: "#,##0"
    sql: ${voluntery} ;;

    filters: {
      field: year
      value: "2016"
    }

    filters: {
      field: quarter
      value: "Q3"
    }
  }

  measure: employees_count {
    label: "Employees"
    value_format: "0"
    type: sum
    sql: ${employees}/10 ;;
  }

  measure: involuntary_termination_count {
    label: "involuntary Termination"
    type: sum
    value_format: "#,##0"
    sql: ${involuntary_termination} ;;

    filters: {
      field: year
      value: "2016"
    }

    filters: {
      field: quarter
      value: "Q3"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Employees_Termination {
    label: "Employees Termination"
    type: sum
    value_format: "#,##0"
    sql: ${voluntery}*10 + ${involuntary_termination}*10 ;;
  }

  measure: Employees_Termination_2015 {
    label: "Employees Termination 2015"
    type: sum
    value_format: "#,##0"
    sql: ${voluntery}*10 + ${involuntary_termination}*10 ;;

    filters: {
      field: year
      value: "2015"
    }
  }
}
