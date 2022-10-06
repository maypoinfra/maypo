view: ejecucion_replicas {
  sql_table_name: `proyectos-maypo.DSA.EJECUCION_REPLICAS`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: fecha_fin {
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
    datatype: datetime
    sql: ${TABLE}.FECHA_FIN ;;
  }

  dimension_group: fecha_inicio {
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
    datatype: datetime
    sql: ${TABLE}.FECHA_INICIO ;;
  }

  dimension: nombre_pipeline {
    type: string
    sql: ${TABLE}.NOMBRE_PIPELINE ;;
  }

  dimension: registros {
    type: number
    sql: ${TABLE}.REGISTROS ;;
  }

  dimension: tabla_final {
    type: string
    sql: ${TABLE}.TABLA_FINAL ;;
  }

  dimension: termino {
    type: string
    sql: ${TABLE}.TERMINO ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}