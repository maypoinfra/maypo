view: cat_grupo_cliente {
  sql_table_name: `proyectos-maypo.ODS.CAT_GRUPO_CLIENTE`
    ;;

  dimension: cve_grupo_cliente {
    type: string
    sql: ${TABLE}.cve_grupo_cliente ;;
  }

  dimension: grupo_clientes {
    type: string
    sql: ${TABLE}.grupo_clientes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
