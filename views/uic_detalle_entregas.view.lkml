view: uic_detalle_entregas {
  sql_table_name: `proyectos-maypo.ODS.UIC_DETALLE_ENTREGAS`
    ;;

  dimension: clase_documento {
    type: string
    sql: ${TABLE}.CLASE_DOCUMENTO ;;
  }

  dimension: fecha_creacion_pedido_mmm {
    type: string
    sql: ${TABLE}.FECHA_CREACION_PEDIDO_MMM ;;
  }

  dimension: fecha_pedido_mmm {
    type: string
    sql: ${TABLE}.FECHA_PEDIDO_MMM ;;
  }

  dimension: fecha_max_pedido_mmm {
    type: string
    sql: ${TABLE}.FECHA_MAX_PEDIDO_MMM ;;
  }

  dimension: fecha_max_entrega_mmm {
    type: string
    sql: ${TABLE}.FECHA_ENTREGA_MMM ;;
  }

  dimension: fecha_mov_mcia_real_mmm {
    type: string
    sql: ${TABLE}.FECHA_MOV_MCIA_REAL_MMM ;;
  }

  dimension: fecha_are_mmm {
    type: string
    sql: ${TABLE}.FECHA_ARE_MMM ;;
  }

  dimension: fecha_envio_mmm {
    type: string
    sql: ${TABLE}.FECHA_ENVIO_MMM ;;
  }

  dimension: fecha_caducidad_mmm {
    type: string
    sql: ${TABLE}.FECHA_CADUCIDAD_MMM ;;
  }

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

  dimension_group: fecha_envio {
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
    sql: ${TABLE}.FECHA_ENVIO ;;
  }

  dimension_group: fecha_caducidad {
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
    sql: ${TABLE}.FECHA_CADUCIDAD ;;
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

  dimension: cve_fecha {
    type: number
    sql: ${TABLE}.CVE_FECHA ;;
  }

  dimension: cantidad_entrega {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

  dimension: cantidad_enviada {
    type: number
    sql: ${TABLE}.CANTIDAD_ENVIADA ;;
  }

  dimension: importe_entrega {
    type: number
    sql: ${TABLE}.IMPORTE_ENTREGA ;;
    value_format: "$#,##0.00"
  }

  measure: MS_CantidadEntrega {
    type: sum
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
    label: "MSCantidad Entrega"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
