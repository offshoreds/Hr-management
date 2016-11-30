view: top5_vacancies {
  sql_table_name: LOOKER.TOP5VACANCIES ;;

  dimension: country_states {
    type: string
    sql: ${TABLE}.COUNTRY_STATES ;;
  }

  dimension: openings {
    type: string
    sql: ${TABLE}.OPENINGS ;;
  }

  dimension: Top_Openings {
    type: string
    sql: ${TABLE}.TOP_OPENINGS ;;
  }

  # measures


  measure: openings_m {
    label: "Openings"
    type: sum
    value_format: "#,###"
    sql: ${Top_Openings} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
