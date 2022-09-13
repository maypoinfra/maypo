view: cat_motivo_rechazo_pedido {
  sql_table_name: `proyectos-maypo.ODS.CAT_MOTIVO_RECHAZO_PEDIDO`
    ;;

  dimension: cve_motivo_rechazo {
    type: string
    sql: ${TABLE}.cve_motivo_rechazo ;;
  }

  dimension: desc_motivo_rechazo {
    type: string
    sql: ${TABLE}.desc_motivo_rechazo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
