view: cat_motivo_pedido {
  sql_table_name: `ODS.CAT_MOTIVO_PEDIDO`
    ;;

  dimension: cve_motivo_pedido {
    type: string
    sql: ${TABLE}.cve_motivo_pedido ;;
  }

  dimension: desc_motivo_pedido {
    type: string
    sql: ${TABLE}.desc_motivo_pedido ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
