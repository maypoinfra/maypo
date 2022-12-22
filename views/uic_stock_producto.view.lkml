view: uic_stock_producto {
  sql_table_name: `proyectos-maypo.ODS.UIC_STOCK_PRODUCTO`
    ;;

  dimension: almacen {
    type: string
    sql: ${TABLE}.ALMACEN ;;
  }

  dimension: almacen2 {
    type: string
    sql: ${TABLE}.ALMACEN2 ;;
  }

  dimension: cantidad_entrada_blq {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTRADA_BLQ ;;
  }

  dimension: cantidad_entrada_stock {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTRADA_STOCK ;;
  }

  dimension: cantidad_unidades {
    type: number
    sql: ${TABLE}.CANTIDAD_UNIDADES ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: clase_movimiento {
    type: string
    sql: ${TABLE}.CLASE_MOVIMIENTO ;;
  }

  dimension: clave_modena {
    type: string
    sql: ${TABLE}.CLAVE_MODENA ;;
  }

  dimension: costo_lote {
    type: number
    sql: ${TABLE}.COSTO_LOTE ;;
  }

  dimension: cve_fecha {
    type: number
    sql: ${TABLE}.CVE_FECHA ;;
  }

  dimension: cve_proveedor {
    type: string
    sql: ${TABLE}.CVE_PROVEEDOR ;;
  }

  dimension: denominacion_almacen {
    type: string
    sql: ${TABLE}.DENOMINACION_ALMACEN ;;
  }

  dimension: descipcion_proveedor {
    type: string
    sql: ${TABLE}.DESCIPCION_PROVEEDOR ;;
  }

  dimension: documento_material {
    type: string
    sql: ${TABLE}.DOCUMENTO_MATERIAL ;;
  }

  dimension: entrada_mercancia {
    type: string
    sql: ${TABLE}.ENTRADA_MERCANCIA ;;
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

  dimension_group: fecha_entrada_mercancia {
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
    sql: ${TABLE}.FECHA_ENTRADA_MERCANCIA ;;
  }

  dimension_group: fecha_entrada_mercancia2 {
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
    sql: ${TABLE}.FECHA_ENTRADA_MERCANCIA2 ;;
  }

  dimension_group: fecha_extraccion {
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
    sql: ${TABLE}.FECHA_EXTRACCION ;;
  }

  dimension_group: fecha_fabricacion {
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
    sql: ${TABLE}.FECHA_FABRICACION ;;
  }

  dimension_group: fecha_orden_compra {
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
    sql: ${TABLE}.FECHA_ORDEN_COMPRA ;;
  }

  dimension: hora_extraccion {
    type: string
    sql: ${TABLE}.HORA_EXTRACCION ;;
  }

  dimension: importe_bloqueado {
    type: number
    sql: ${TABLE}.IMPORTE_BLOQUEADO ;;
  }

  dimension: importe_ccalidad {
    type: number
    sql: ${TABLE}.IMPORTE_CCALIDAD ;;
  }

  dimension: importe_inventariot {
    type: number
    sql: ${TABLE}.IMPORTE_INVENTARIOT ;;
  }

  dimension: importe_libre {
    type: number
    sql: ${TABLE}.IMPORTE_LIBRE ;;
  }

  dimension: importe_monedal {
    type: number
    sql: ${TABLE}.IMPORTE_MONEDAL ;;
  }

  dimension: indicador_stock {
    type: string
    sql: ${TABLE}.INDICADOR_STOCK ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.LOTE ;;
  }

  dimension: lote_proveedor {
    type: string
    sql: ${TABLE}.LOTE_PROVEEDOR ;;
  }

  dimension: lote_proveedor_ausp {
    type: string
    sql: ${TABLE}.LOTE_PROVEEDOR_AUSP ;;
  }

  dimension: monedal {
    type: string
    sql: ${TABLE}.MONEDAL ;;
  }

  dimension: numero_cproveedor {
    type: string
    sql: ${TABLE}.NUMERO_CPROVEEDOR ;;
  }

  dimension: numero_doc_compras {
    type: string
    sql: ${TABLE}.NUMERO_DOC_COMPRAS ;;
  }

  dimension: numero_pedimento {
    type: string
    sql: ${TABLE}.NUMERO_PEDIMENTO ;;
  }

  dimension: numero_posicion {
    type: number
    sql: ${TABLE}.NUMERO_POSICION ;;
  }

  dimension: numero_stock {
    type: string
    sql: ${TABLE}.NUMERO_STOCK ;;
  }

  dimension: orden_compra {
    type: string
    sql: ${TABLE}.ORDEN_COMPRA ;;
  }

  dimension: procedencia {
    type: string
    sql: ${TABLE}.PROCEDENCIA ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.SOLICITANTE ;;
  }

  dimension: sr_material {
    type: number
    sql: ${TABLE}.SR_MATERIAL ;;
  }

  dimension: stock_bloqueado {
    type: number
    sql: ${TABLE}.STOCK_BLOQUEADO ;;
  }

  dimension: stock_devoluciones {
    type: number
    sql: ${TABLE}.STOCK_DEVOLUCIONES ;;
  }

  dimension: stock_envase {
    type: number
    sql: ${TABLE}.STOCK_ENVASE ;;
  }

  dimension: stock_lotes_no_lb {
    type: number
    sql: ${TABLE}.STOCK_LOTES_NO_LB ;;
  }

  dimension: stock_transito {
    type: number
    sql: ${TABLE}.STOCK_TRANSITO ;;
  }

  dimension: stock_traslado_aa {
    type: number
    sql: ${TABLE}.STOCK_TRASLADO_AA ;;
  }

  dimension: stock_traslado_cc {
    type: number
    sql: ${TABLE}.STOCK_TRASLADO_CC ;;
  }

  dimension: stock_valorado {
    type: number
    sql: ${TABLE}.STOCK_VALORADO ;;
  }

  dimension: texto_material {
    type: string
    sql: ${TABLE}.TEXTO_MATERIAL ;;
  }

  dimension: tipo_material {
    type: string
    sql: ${TABLE}.TIPO_MATERIAL ;;
  }

  dimension: total_inventariop {
    type: number
    sql: ${TABLE}.TOTAL_INVENTARIOP ;;
  }

  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.UNIDAD_MEDIDA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
