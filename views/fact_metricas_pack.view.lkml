view: fact_metricas_pack {
  sql_table_name: `proyectos-maypo.DSA.FACT_METRICAS_PACK`
    ;;

  dimension: categoria {
    type: string
    sql: ${TABLE}.CATEGORIA ;;
  }

  dimension: cve_entidad {
    type: number
    sql: ${TABLE}.CVE_ENTIDAD ;;
  }

  dimension: cve_localidad {
    type: number
    sql: ${TABLE}.CVE_LOCALIDAD ;;
  }

  dimension: cve_municipio {
    type: number
    sql: ${TABLE}.CVE_MUNICIPIO ;;
  }

  dimension: laboratorios {
    type: string
    sql: ${TABLE}.LABORATORIOS ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.PRECIO ;;
  }

  dimension: unidades {
    type: number
    sql: ${TABLE}.UNIDADES ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.PRODUCTO ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.SEGMENTO ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  measure: precio_m {
    type: sum
    sql: ${TABLE}.PRECIO  ;;
    value_format: "$#,##0.00"
    drill_fields: []
  }

  measure: unidades_m {
    type: sum
    sql: ${TABLE}.UNIDADES ;;
    value_format: "$#,##0.00"
    drill_fields: []
  }

  measure: monto {
    type: sum
    sql: ${TABLE}.PRECIO * ${TABLE}.UNIDADES ;;
    value_format: "$#,##0.00"
    drill_fields: []
  }

  measure: count {
    type: count
    drill_fields: [user_details*]
    label: "Num. Productos"
  }
  set: user_details {
    fields: [sku,producto,laboratorios,categoria,segmento,precio,unidades]
  }
}
