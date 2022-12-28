view: seguimiento_pedido_entrega {
  sql_table_name: `proyectos-maypo.ODS.SEGUIMIENTO_PEDIDO_ENTREGA`
    ;;

  dimension: documento_modelo {
    type: string
    sql: ${TABLE}.DOCUMENTO_MODELO ;;
  }

  dimension: posicion_modelo {
    type: number
    sql: ${TABLE}.POSICION_MODELO ;;
  }

  dimension: contrato_cliente {
    type: string
    sql: ${TABLE}.CONTRATO_CLIENTE ;;
  }

  dimension: no_pedido {
    type: string
    sql: ${TABLE}.NO_PEDIDO ;;
  }

  dimension: documento_venta {
    type: string
    sql: ${TABLE}.DOCUMENTO_VENTA ;;
  }

  dimension: posicion_venta {
    type: string
    sql: ${TABLE}.POSICION_VENTA ;;
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

  dimension: cve_motivo_pedido {
    type: string
    sql: ${TABLE}.CVE_MOTIVO_PEDIDO ;;
  }

  dimension: cve_motivo_rechazo {
    type: string
    sql: ${TABLE}.CVE_MOTIVO_RECHAZO ;;
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

 #------------SB OPERADOR LOGISTICO--------------
  dimension: funcion_interlocutor {
    type: string
    sql: ${TABLE}.FUNCION_INTERLOCUTOR ;;
  }

  dimension: cliente_interlocutor {
    type: string
    sql: ${TABLE}.CLIENTE_INTERLOCUTOR ;;
  }

  dimension: tipo_sb {
    type: string
    sql: ${TABLE}.TIPO_SB ;;
  }

 #------------RE DESTINARIO FACTURA--------------
  dimension: funcion_interlocutor2 {
    type: string
    sql: ${TABLE}.FUNCION_INTERLOCUTOR2 ;;
  }

  dimension: cliente_interlocutor2 {
    type: string
    sql: ${TABLE}.CLIENTE_INTERLOCUTOR2 ;;
  }

  dimension: tipo_re {
    type: string
    sql: ${TABLE}.TIPO_RE ;;
  }

  dimension: cantidad_bultos {
    type: number
    sql: ${TABLE}.CANTIDAD_BULTOS ;;
  }



  dimension: cantidad_pedido {
    type: number
    sql: ${TABLE}.CANTIDAD_PEDIDO ;;
  }

  dimension: precio_unitario {
    type: number
    sql: ${TABLE}.PRECIO_UNITARIO ;;
  }

  dimension: cantidad_acum_conf {
    type: number
    sql: ${TABLE}.CANTIDAD_ACUM_CONF ;;
  }

  dimension: valor_neto {
    type: number
    sql: ${TABLE}.VALOR_NETO ;;
  }

  dimension: doc_entrega {
    type: string
    sql: ${TABLE}.DOC_ENTREGA ;;
  }

  dimension: posicion_entrega {
    type: string
    sql: ${TABLE}.POSICION_ENTREGA ;;
  }

  dimension_group: creado_doc_entrega {
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
    sql:   ${TABLE}.CREADO_DOC_ENTREGA ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: almacen {
    type: string
    sql: ${TABLE}.ALMACEN ;;
  }

  dimension: codigo_ean_upc {
    type: string
    sql: ${TABLE}.CODIGO_EAN_UPC ;;
  }

  dimension: grupo_clientes {
    type: string
    sql: ${TABLE}.GRUPO_CLIENTES ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.LOTE ;;
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

  dimension: cve_motivo_are {
    type: string
    sql: ${TABLE}.CVE_MOTIVO_ARE ;;
  }


  dimension: cantidad_entrega {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

  dimension: importe_entrega {
    type: number
    sql: ${TABLE}.IMPORTE_ENTREGA ;;
  }

  dimension: cantidad_are {
    type: number
    sql: ${TABLE}.CANTIDAD_ARE ;;
  }

  dimension: importe_are {
    type: number
    sql: ${TABLE}.IMPORTE_ARE ;;
  }

  dimension: indicador_estatus_suministro {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_SUMINISTRO ;;
  }

  dimension: calcu_indica_estat_suminist {
    type: string
    sql: ${TABLE}.CALCU_INDICA_ESTAT_SUMINIST ;;
  }

  dimension: indicador_estatus_piking {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_PIKING ;;
  }

  dimension: indicador_estatus_sal_alm {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_SAL_ALM ;;
  }

  dimension: indicador_estatus_are {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_ARE ;;
  }

  dimension: indicador_estatus_factura {
    type: string
    sql: ${TABLE}.INDICADOR_ESTATUS_FACTURA ;;
  }

  dimension: estatus_ped_entre {
    type: string
    sql: ${TABLE}.ESTATUS_PED_ENTRE ;;
  }

  dimension: doc_ped_dev {
    type: string
    sql: ${TABLE}.DOC_PED_DEV ;;
  }

  dimension: doc_ped_pos_dev {
    type: string
    sql: ${TABLE}.DOC_PED_POS_DEV ;;
  }

  dimension: doc_entre_dev {
    type: string
    sql: ${TABLE}.DOC_ENTRE_DEV ;;
  }

  dimension: doc_entre_pos_dev {
    type: string
    sql: ${TABLE}.DOC_ENTRE_POS_DEV ;;
  }

  dimension_group: fecha_are_dev {
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
    sql: ${TABLE}.FECHA_ARE_DEV ;;
  }

  dimension: cantidad_dev {
    type: number
    sql: ${TABLE}.CANTIDAD_DEV ;;
  }

  dimension: importe_dev {
    type: number
    sql: ${TABLE}.IMPORTE_DEV ;;
  }

  dimension: ind_estatus_sum_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_SUM_DEV ;;
  }

  dimension: ind_estatus_piking_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_PIKING_DEV ;;
  }

  dimension: ind_estatus_sal_alm_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_SAL_ALM_DEV ;;
  }

  dimension: ind_estatus_are_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_ARE_DEV ;;
  }

  dimension: ind_estatus_fact_dev {
    type: string
    sql: ${TABLE}.IND_ESTATUS_FACT_DEV ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
