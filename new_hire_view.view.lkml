view: new_hire_view {
  sql_table_name: HRM.NEW_HIRE_VIEW ;;

  dimension: department_name {
    label: "Department"
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME ;;
  }

  dimension: hires {
    type: string
    sql: ${TABLE}.HIRES ;;
  }

  # measures

  measure: hires_m {
    label: "Hires"
    type: sum
    sql: ${hires} ;;
  }

  measure: count {
    type: count
    drill_fields: [department_name]
  }
}
