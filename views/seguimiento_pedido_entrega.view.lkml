view: seguimiento_pedido_entrega {
  sql_table_name: `proyectos-maypo.ODS.SEGUIMIENTO_PEDIDO_ENTREGA`
    ;;

  dimension: almacen {
    type: string
    sql: ${TABLE}.ALMACEN ;;
  }

  dimension: calcu_indica_estat_suminist {
    type: string
    sql: ${TABLE}.CALCU_INDICA_ESTAT_SUMINIST ;;
  }

  dimension: cantidad_acum_conf {
    type: number
    sql: ${TABLE}.CANTIDAD_ACUM_CONF ;;
  }

  dimension: cantidad_are {
    type: number
    sql: ${TABLE}.CANTIDAD_ARE ;;
  }

  dimension: cantidad_bultos {
    type: number
    sql: ${TABLE}.CANTIDAD_BULTOS ;;
  }

  dimension: cantidad_dev {
    type: number
    sql: ${TABLE}.CANTIDAD_DEV ;;
  }

  dimension: cantidad_entrega {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

  dimension: cantidad_pedido {
    type: number
    sql: ${TABLE}.CANTIDAD_PEDIDO ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: clase_doc_ventas {
    type: string
    sql: ${TABLE}.CLASE_DOC_VENTAS ;;
  }

  dimension: cliente_interlocutor {
    type: string
    sql: ${TABLE}.CLIENTE_INTERLOCUTOR ;;
  }

  dimension: codigo_ean_upc {
    type: string
    sql: ${TABLE}.CODIGO_EAN_UPC ;;
  }

  dimension: contrato_cliente {
    type: string
    sql: ${TABLE}.CONTRATO_CLIENTE ;;
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

  dimension: destinatario_mcia {
    type: string
    sql: ${TABLE}.DESTINATARIO_MCIA ;;
  }

  dimension: doc_ped_dev {
    type: string
    sql: ${TABLE}.DOC_PED_DEV ;;
  }

  dimension: doc_pos_dev {
    type: string
    sql: ${TABLE}.DOC_POS_DEV ;;
  }

  dimension: documento_modelo {
    type: string
    sql: ${TABLE}.DOCUMENTO_MODELO ;;
  }

  dimension: documento_venta {
    type: string
    sql: ${TABLE}.DOCUMENTO_VENTA ;;
  }

  dimension: entrega {
    type: string
    sql: ${TABLE}.ENTREGA ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.ESTATUS ;;
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
    sql:   ${TABLE}.FECHA_CREACION_PEDIDO ;;
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

  dimension_group: fecha_picking {
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
    sql: ${TABLE}.FECHA_PICKING ;;
  }

  dimension: funcion_interlocutor {
    type: string
    sql: ${TABLE}.FUNCION_INTERLOCUTOR ;;
  }

  dimension: grupo_clientes {
    type: string
    sql: ${TABLE}.GRUPO_CLIENTES ;;
  }

  dimension: importe_are {
    type: number
    sql: ${TABLE}.IMPORTE_ARE ;;
  }

  dimension: importe_dev {
    type: number
    sql: ${TABLE}.IMPORTE_DEV ;;
  }

  dimension: importe_entrega {
    type: number
    sql: ${TABLE}.IMPORTE_ENTREGA ;;
  }

  dimension: ind_esetatus_fact_dev {
    type: string
    sql: ${TABLE}.IND_ESETATUS_FACT_DEV ;;
  }

  dimension: ind_estatus_piking_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_PIKING_DEV ;;
  }

  dimension: ind_estatus_sal_alm_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_SAL_ALM_DEV ;;
  }

  dimension: ind_estatus_sum_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_SUM_DEV ;;
  }

  dimension: indicador_estatus_are {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_ARE ;;
  }

  dimension: indicador_estatus_factura {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_FACTURA ;;
  }

  dimension: indicador_estatus_piking {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_PIKING ;;
  }

  dimension: indicador_estatus_sal_alm {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_SAL_ALM ;;
  }

  dimension: indicador_estatus_suministro {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_SUMINISTRO ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.LOTE ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: motivo_are {
    type: string
    sql: ${TABLE}.MOTIVO_ARE ;;
  }

  dimension: motivo_pedido {
    type: string
    sql: ${TABLE}.MOTIVO_PEDIDO ;;
  }

  dimension: motivo_rechazo {
    type: string
    sql: ${TABLE}.MOTIVO_RECHAZO ;;
  }

  dimension: no_pedido {
    type: string
    sql: ${TABLE}.NO_PEDIDO ;;
  }

  dimension: posicion_entrega {
    type: string
    sql: ${TABLE}.POSICION_ENTREGA ;;
  }

  dimension: posicion_modelo {
    type: number
    sql: ${TABLE}.POSICION_MODELO ;;
  }

  dimension: posicion_venta {
    type: string
    sql: ${TABLE}.POSICION_VENTA ;;
  }

  dimension: precio_unitario {
    type: number
    sql: ${TABLE}.PRECIO_UNITARIO ;;
  }

  dimension: rownum {
    type: number
    sql: ${TABLE}.ROWNUM ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.SOLICITANTE ;;
  }

  dimension: valor_neto {
    type: number
    sql: ${TABLE}.VALOR_NETO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
