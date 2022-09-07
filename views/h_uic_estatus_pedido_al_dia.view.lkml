view: h_uic_estatus_pedido_al_dia {
  sql_table_name: `proyectos-maypo.DWH.H_UIC_ESTATUS_PEDIDO_AL_DIA`
    ;;

 #-------------RELACION CON DIMENSIONES TABLAS--------------
  dimension: cve_hechos {
    type: string
    sql: ${TABLE}.CVE_HECHOS ;;
  }

  dimension: sr_material {
    type: number
    sql: ${TABLE}.SR_MATERIAL ;;
  }

  dimension: sr_cli_destina {
    type: number
    sql: ${TABLE}.SR_CLI_DESTINA ;;
  }

  dimension: sr_cli_solicitante {
    type: number
    sql: ${TABLE}.SR_CLI_SOLICITANTE ;;
  }

#-------------DIM-ATRIBUTOS--------------
  dimension: cve_indicador {
    type: number
    sql: ${TABLE}.CVE_INDICADOR ;;
  }

  dimension: desc_indicador {
    type: string
    sql: ${TABLE}.DESC_INDICADOR ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.IMPORTE ;;
  }

#--------------METRICAS-------------------
  measure: Total_cantidad {
    type: sum
    sql: ${TABLE}.CANTIDAD ;;
    value_format: "#,##0"
  }

  measure: Total_importe {
    type: sum
    sql: ${TABLE}.IMPORTE/1000000 ;;
    value_format: "$#,##0.00"
  }


#--------------METRICAS COUNT DRILL-------------------
  measure: count {
    type: count
    drill_fields: []
  }
}
