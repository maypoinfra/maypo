view: uic_detalle_pedidos {
  sql_table_name: `proyectos-maypo.ODS.UIC_DETALLE_PEDIDOS`
    ;;

  dimension: cve_motivo_rechazo {
    type: string
    sql: ${TABLE}.CVE_MOTIVO_RECHAZO ;;
  }

  dimension: bonificacion_descuentos {
    type: string
    sql: ${TABLE}.BONIFICACION_DESCUENTOS ;;
  }

  dimension: documento_venta {
    type: string
    sql: ${TABLE}.DOCUMENTO_VENTA ;;
  }

  dimension: posicion_venta {
    type: string
    sql: ${TABLE}.POSICION_VENTA ;;
  }

  dimension: cve_grupo_clientes {
    type: string
    sql: ${TABLE}.CVE_GRUPO_CLIENTES ;;
  }

 dimension: fecha_pedido_mmm {
    type: string
    sql: ${TABLE}.FECHA_PEDIDO_MMM ;;
  }

  dimension: fecha_creacion_pedido_mmm{
    type: string
    sql: ${TABLE}.FECHA_CREACION_PEDIDO_MMM ;;
  }

  dimension: fecha_max_pedido_mmm{
    type: string
    sql: ${TABLE}.FECHA_MAX_PEDIDO_MMM ;;
  }

  dimension: estatus_pedido {
    type: string
    sql: ${TABLE}.ESTATUS_PEDIDO ;;
  }

  dimension: contrato_cliente {
    type: string
    sql: ${TABLE}.CONTRATO_CLIENTE ;;
  }

  dimension: no_pedido {
    type: string
    sql: ${TABLE}.NO_PEDIDO ;;
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

  dimension: clase_doc_ventas {
    type: string
    sql: ${TABLE}.CLASE_DOC_VENTAS ;;
  }

  dimension: destinatario_mcia {
    type: string
    sql: ${TABLE}.DESTINATARIO_MCIA ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.SOLICITANTE ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: indicador_estatus_suministro {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_SUMINISTRO ;;
  }

  dimension: cantidad_acum_conf {
    type: number
    sql: ${TABLE}.CANTIDAD_ACUM_CONF ;;
  }

  dimension: cantidad_pedido {
    type: number
    sql: ${TABLE}.CANTIDAD_PEDIDO ;;
  }

  dimension: precio_unitario {
    type: number
    sql: ${TABLE}.PRECIO_UNITARIO ;;
    value_format: "$#,##0.00"
  }

  dimension: valor_neto {
    type: number
    sql: ${TABLE}.VALOR_NETO ;;
    value_format: "$#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
