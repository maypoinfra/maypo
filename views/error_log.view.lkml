view: error_log {
  sql_table_name: `proyectos-maypo.DSA.error_log`
    ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: err_code {
    type: number
    sql: ${TABLE}.errCode ;;
  }

  dimension: err_msg {
    type: string
    sql: ${TABLE}.errMsg ;;
  }

  dimension: err_stage {
    type: string
    sql: ${TABLE}.errStage ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension_group: ingestion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ingestion_time ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
