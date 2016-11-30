view: spend_business_units {
  sql_table_name: LOOKER.SPEND_BUSINESS_UNITS ;;

  dimension: business_unit_s {
    label: "Business Unit"
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: spend_amount_bs {
    type: string
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  dimension: spend_percent_bs {
    type: string
    sql: ${TABLE}.SPEND_PERCENT ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: spend_p {
    type: string
    sql: ${TABLE}.SPEND_P ;;
  }

  dimension: spend_a {
    type: string
    sql: ${TABLE}.SPEND_A ;;
  }

  # measures

  measure: spend_amount_mb {
    type: sum
    label: "Spend Amount"
    value_format: "$#,##0"
    sql: ${spend_a} ;;
  }

  measure: spend_percent_mb {
    type: sum
    label: "Spend Percent"
    value_format: "0%"
    sql: ${spend_p} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
