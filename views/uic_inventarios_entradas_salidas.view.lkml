view: uic_inventarios_entradas_salidas {
  sql_table_name: `proyectos-maypo.ODS.UIC_INVENTARIOS_ENTRADAS_SALIDAS`
    ;;

  dimension: sr_almacen {
    type: number
    sql: ${TABLE}.SR_ALMACEN ;;
  }

  dimension: sr_material {
    type: number
    sql: ${TABLE}.SR_MATERIAL ;;
  }

  dimension: cve_fecha {
    type: number
    sql: ${TABLE}.CVE_FECHA ;;
  }

  dimension: almacen {
    type: string
    sql: ${TABLE}.ALMACEN ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: clase_mov {
    type: string
    sql: ${TABLE}.CLASE_MOV ;;
  }

  dimension: clase_movimiento {
    type: string
    sql: ${TABLE}.CLASE_MOVIMIENTO ;;
  }

  dimension: delivery {
    type: string
    sql: ${TABLE}.DELIVERY ;;
  }

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

  dimension_group: hora {
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
    sql: ${TABLE}.FECHAHORA ;;
    html: {{ rendered_value | date: "%T %P" }};;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.IMPORTE ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.LOTE ;;
  }

  dimension: orden_transferencia {
    type: string
    sql: ${TABLE}.ORDEN_TRANSFERENCIA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
