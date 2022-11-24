view: dim_almacen {
  sql_table_name: `proyectos-maypo.DWH.DIM_ALMACEN`
    ;;

  dimension: almacen {
    type: string
    sql: ${TABLE}.ALMACEN ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension_group: fecha_carga {
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
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: sr_almacen {
    type: number
    sql: ${TABLE}.SR_ALMACEN ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
