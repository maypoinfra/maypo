view: cat_motivo_are {
  sql_table_name: `proyectos-maypo.ODS.CAT_MOTIVO_ARE`
    ;;

  dimension: cve_motivo_are {
    type: string
    sql: ${TABLE}.cve_motivo_are ;;
  }

  dimension: desc_motivo_are {
    type: string
    sql: ${TABLE}.desc_motivo_are ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
