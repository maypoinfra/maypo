view: uic_seguimiento_factura_detalle {
  sql_table_name: `proyectos-maypo.ODS.UIC_SEGUIMIENTO_FACTURA_DETALLE`
    ;;

  dimension: almacen {
    type: string
    sql: ${TABLE}.ALMACEN ;;
  }

  dimension: bic_zcontsap {
    type: string
    sql: ${TABLE}.BIC_ZCONTSAP ;;
  }

  dimension: bic_znrocont {
    type: string
    sql: ${TABLE}.BIC_ZNROCONT ;;
  }

  dimension: bic_znrolic {
    type: string
    sql: ${TABLE}.BIC_ZNROLIC ;;
  }

  dimension: bic_zposcont {
    type: number
    sql: ${TABLE}.BIC_ZPOSCONT ;;
  }

  dimension: cantidad_facturada {
    type: number
    sql: ${TABLE}.CANTIDAD_FACTURADA ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: clase_factura {
    type: string
    sql: ${TABLE}.CLASE_FACTURA ;;
  }

  dimension_group: creado_factura {
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
    sql: ${TABLE}.CREADO_FACTURA ;;
  }

  dimension: documento_referencia {
    type: string
    sql: ${TABLE}.DOCUMENTO_REFERENCIA ;;
  }

  dimension: documento_venta {
    type: string
    sql: ${TABLE}.DOCUMENTO_VENTA ;;
  }

  dimension: factura {
    type: string
    sql: ${TABLE}.FACTURA ;;
  }

  dimension_group: fecha_factura {
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
    sql: ${TABLE}.FECHA_FACTURA ;;
  }

  dimension: importe_factura {
    type: number
    sql: ${TABLE}.IMPORTE_FACTURA ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.LOTE ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: posicion {
    type: number
    sql: ${TABLE}.POSICION ;;
  }

  dimension: posicion_doc_venta {
    type: number
    sql: ${TABLE}.POSICION_DOC_VENTA ;;
  }

  dimension: posicion_referenicia {
    type: number
    sql: ${TABLE}.POSICION_REFERENICIA ;;
  }

  dimension: sr_sold_to {
    type: string
    sql: ${TABLE}.SR_SOLD_TO ;;
  }

  dimension: sr_ship_to {
    type: string
    sql: ${TABLE}.SR_SHIP_TO ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.TIPO ;;
  }

  dimension: valor_neto2 {
    type: number
    sql: ${TABLE}.VALOR_NETO2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
