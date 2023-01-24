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
    type: number
    sql: ${TABLE}.SKU ;;
  }

  measure: precio_m {
    type: sum
    sql: ${TABLE}.PRECIO  ;;
    drill_fields: []
  }

  measure: unidades_m {
    type: sum
    sql: ${TABLE}.UNIDADES ;;
    drill_fields: []
  }

  measure: monto {
    type: sum
    sql: ${TABLE}.PRECIO * ${TABLE}.UNIDADES ;;
    drill_fields: []
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
