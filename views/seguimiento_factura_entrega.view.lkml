view: seguimiento_factura_entrega {
  sql_table_name: `proyectos-maypo.ODS.SEGUIMIENTO_FACTURA_ENTREGA`
    ;;

  dimension: cantidad_facturada {
    type: string
    sql: ${TABLE}.CANTIDAD_FACTURADA ;;
  }

  dimension: clase_factura {
    type: string
    sql: ${TABLE}.CLASE_FACTURA ;;
  }

  dimension: creado_factura {
    type: string
    sql: ${TABLE}.CREADO_FACTURA ;;
  }

  dimension: documento_modelo {
    type: string
    sql: ${TABLE}.DOCUMENTO_MODELO ;;
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

  dimension: posicion {
    type: number
    sql: ${TABLE}.POSICION ;;
  }

  dimension: sr_cliente {
    type: string
    sql: ${TABLE}.SR_CLIENTE ;;
  }

  dimension: sr_material {
    type: string
    sql: ${TABLE}.SR_MATERIAL ;;
  }

  dimension: valor_neto {
    type: string
    sql: ${TABLE}.VALOR_NETO ;;
  }

  dimension: valor_neto2 {
    type: string
    sql: ${TABLE}.VALOR_NETO2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
