view: seguimiento_factura_entrega {
  sql_table_name: `proyectos-maypo.ODS.SEGUIMIENTO_FACTURA_ENTREGA`
    ;;

  dimension: sr_material {
    type: string
    sql: ${TABLE}.SR_MATERIAL ;;
  }

  dimension: sr_cliente {
    type: string
    sql: ${TABLE}.SR_CLIENTE ;;
  }

  dimension: factura {
    type: string
    sql: ${TABLE}.FACTURA ;;
  }

  dimension: documento_modelo {
    type: string
    sql: ${TABLE}.DOCUMENTO_MODELO ;;
  }

  dimension: posicion {
    type: number
    sql: ${TABLE}.POSICION ;;
  }

  dimension: clase_factura {
    type: string
    sql: ${TABLE}.CLASE_FACTURA ;;
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

  dimension: cantidad_facturada {
    type: number
    sql: ${TABLE}.CANTIDAD_FACTURADA ;;
  }

  dimension: valor_neto {
    type: number
    sql: ${TABLE}.VALOR_NETO ;;
  }

  dimension: valor_neto2 {
    type: number
    sql: ${TABLE}.VALOR_NETO2 ;;
  }


  dimension: creado_factura {
    type: string
    sql: ${TABLE}.CREADO_FACTURA ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
