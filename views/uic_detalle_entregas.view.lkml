view: uic_detalle_entregas {
  sql_table_name: `proyectos-maypo.ODS.UIC_DETALLE_ENTREGAS`
    ;;

  dimension: contrato_cliente {
    type: string
    sql: ${TABLE}.CONTRATO_CLIENTE ;;
  }

  dimension: no_pedido {
    type: string
    sql: ${TABLE}.NO_PEDIDO ;;
  }

  dimension: entrega {
    type: string
    sql: ${TABLE}.ENTREGA ;;
  }

  dimension: destinatario_mcia {
    type: string
    sql: ${TABLE}.DESTINATARIO_MCIA ;;
  }

  dimension_group: creado_el {
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
    sql: ${TABLE}.CREADO_EL ;;
  }

  dimension_group: fecha_are {
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
    sql: ${TABLE}.FECHA_ARE ;;
  }

  dimension_group: fecha_creacion_pedido {
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
    sql: ${TABLE}.FECHA_CREACION_PEDIDO ;;
  }

  dimension_group: fecha_entrega {
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
    sql: ${TABLE}.FECHA_ENTREGA ;;
  }

  dimension_group: fecha_max_pedido {
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
    sql: ${TABLE}.FECHA_MAX_PEDIDO ;;
  }

  dimension_group: fecha_mov_mcia_real {
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
    sql: ${TABLE}.FECHA_MOV_MCIA_REAL ;;
  }

  dimension_group: fecha_pedido {
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
    sql: ${TABLE}.FECHA_PEDIDO ;;
  }

  dimension: grupo_clientes {
    type: string
    sql: ${TABLE}.GRUPO_CLIENTES ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.LOTE ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: posicion_entrega {
    type: string
    sql: ${TABLE}.POSICION_ENTREGA ;;
  }


  dimension: cantidad_entrega {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

  dimension: importe_entrega {
    type: number
    sql: ${TABLE}.IMPORTE_ENTREGA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
