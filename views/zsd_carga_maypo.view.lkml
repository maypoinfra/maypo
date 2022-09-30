view: zsd_carga_maypo {
  sql_table_name: `proyectos-maypo.DSA.ZSD_CARGA_MAYPO`
    ;;

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA ;;
  }

  dimension_group: fecha_carga {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: registros {
    type: number
    sql: ${TABLE}.REGISTROS ;;
  }

  dimension: tabla {
    type: string
    sql: ${TABLE}.TABLA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: Total_Registros{
    type: sum
    sql: ${TABLE}.REGISTROS ;;
  }
}
