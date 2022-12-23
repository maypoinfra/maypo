view: cat_indicador {
  sql_table_name: `proyectos-maypo.ODS.CAT_INDICADOR`
    ;;

  dimension: cve_indicador {
    type: number
    description: "Número consecutivo del indicador"
    sql: ${TABLE}.CVE_INDICADOR ;;
  }

  dimension: cve_proceso {
    type: number
    description: "Númer de proceso que está en la tabla ODS.CONFIGURACION"
    sql: ${TABLE}.CVE_PROCESO ;;
  }

  dimension: desc_indicador {
    type: string
    description: "Descripción del indicador para mostrar"
    sql: ${TABLE}.DESC_INDICADOR ;;
  }

  dimension: nom_proceso {
    type: string
    description: "Nombre del proceso que está en la tabla  ODS.CONFIGURACION"
    sql: ${TABLE}.NOM_PROCESO ;;
  }

  dimension: regla_aplicar {
    type: string
    description: "Poner la regla en SQL que se desea para el indicador"
    sql: ${TABLE}.REGLA_APLICAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
