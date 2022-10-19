view: h_uic_seguimiento_pedido_principal {
  sql_table_name: `proyectos-maypo.DWH.H_UIC_SEGUIMIENTO_PEDIDO_PRINCIPAL`
    ;;

 #-------------RELACION CON DIMENSIONES TABLAS--------------
  dimension: PK {
    primary_key: yes
    type: string
    sql: ${TABLE}.CVE ;;
  }

  dimension: dim_tiempo {
    type: number
    sql: ${TABLE}.DIM_TIEMPO ;;
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
  dimension: cantidad_pedido {
    type: number
    sql: ${TABLE}.CANTIDAD_PEDIDO ;;
  }

  dimension: importe_pedido {
    type: number
    sql: ${TABLE}.IMPORTE_PEDIDO ;;
  }

  dimension: no_suministrado {
    type: number
    sql: ${TABLE}.NO_SUMINISTRADO ;;
  }

  dimension: contador_posicion_pedido {
    type: number
    sql: ${TABLE}.CONTADOR_POSICION_PEDIDO ;;
  }

  dimension: indicador_retraso {
    type: number
    sql: ${TABLE}.INDICADOR_RETRASO ;;
  }

  dimension: ind_entrega_incompleta {
    type: number
    sql: ${TABLE}.IND_ENTREGA_INCOMPLETA ;;
  }

  dimension: contador_posicion_entrega {
    type: number
    sql: ${TABLE}.CONTADOR_POSICION_ENTREGA ;;
  }

  dimension: cantidad_entrega {
    type: number
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

  dimension: importe_entrega {
    type: number
    sql: ${TABLE}.IMPORTE_ENTREGA ;;
  }

  dimension: cantidad_are {
    type: number
    sql: ${TABLE}.CANTIDAD_ARE ;;
  }

  dimension: importe_are {
    type: number
    sql: ${TABLE}.IMPORTE_ARE ;;
  }

  dimension: contador_factura {
    type: number
    sql: ${TABLE}.CONTADOR_FACTURA ;;
  }

  dimension: cantidad_factura {
    type: number
    sql: ${TABLE}.CANTIDAD_FACTURA ;;
  }

  dimension: importe_factura {
    type: number
    sql: ${TABLE}.IMPORTE_FACTURA ;;
  }


#--------------METRICAS-------------------
  measure: Total_Cantidad_Pedido {
    type: sum
    sql: ${TABLE}.CANTIDAD_PEDIDO ;;
  }

  measure: Total_Importe_Pedido {
    type: sum
    sql: ${TABLE}.IMPORTE_PEDIDO/1000000 ;;
    value_format: "$#,##0.00"
  }

  measure: Total_No_Suministrado {
    type: sum
    sql: ${TABLE}.NO_SUMINISTRADO ;;
  }

  measure: Total_Contador_Posicion_Pedido {
    type: sum
    sql: ${TABLE}.CONTADOR_POSICION_PEDIDO ;;
  }

  measure: Total_Indicador_Retraso {
    type: sum
    sql: ${TABLE}.INDICADOR_RETRASO ;;
  }

  measure: Total_Ind_Entrega_Incompleta {
    type: sum
    sql: ${TABLE}.IND_ENTREGA_INCOMPLETA ;;
  }

  measure: Total_Contador_Posicion_Entrega {
    type: sum
    sql: ${TABLE}.CONTADOR_POSICION_ENTREGA ;;
  }

  measure: Total_Cantidad_Entrega {
    type: sum
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

  measure: Total_Importe_Entrega {
    type: sum
    sql: ${TABLE}.IMPORTE_ENTREGA/1000000 ;;
    value_format: "$#,##0.00"
  }

  measure: Total_Cantidad_Are {
    type: sum
    sql: ${TABLE}.CANTIDAD_ARE ;;
  }

  measure: Total_Importe_Are {
    type: sum
    sql: ${TABLE}.IMPORTE_ARE ;;
    value_format: "$#,##0.00"
  }

  measure: Total_contador_factura {
    type: sum
    sql: ${TABLE}.CONTADOR_FACTURA ;;
  }

  measure: Total_cantidad_factura {
    type: sum
    sql: ${TABLE}.CANTIDAD_FACTURA ;;
  }

  measure: Total_importe_factura {
    type: sum
    sql: ${TABLE}.IMPORTE_FACTURA/1000000 ;;
    value_format: "$#,##0.00"
  }

#--------------METRICAS PORCENTAJES-------------------

  measure: Suministro {
    label: "% Suministro"
    type: number
    sql: (SUM(${TABLE}.NO_SUMINISTRADO * 100) / SUM(${TABLE}.CONTADOR_POSICION_PEDIDO) ;;
    #sql:SUM(${TABLE}.CONTADOR_POSICION_PEDIDO)/SUM(${TABLE}.CONTADOR_POSICION_PEDIDO+${TABLE}.NO_SUMINISTRADO)*100 ;;
    value_format: "0.0\%"
  }

  measure: Tiempo {
    label: "% En Tiempo"
    type: number
    sql: 100-(SUM(${TABLE}.INDICADOR_RETRASO) * 100) / SUM(${TABLE}.CONTADOR_POSICION_ENTREGA) ;;
    #sql:SUM(${TABLE}.CONTADOR_POSICION_ENTREGA)/SUM(${TABLE}.CONTADOR_POSICION_ENTREGA+${TABLE}.INDICADOR_RETRASO)*100 ;;
    value_format: "0.0\%"
  }

  measure: Facturado {
    label: "% Facturado"
    type: number
    sql: (SUM(${TABLE}.CONTADOR_FACTURA * 100) / SUM(${TABLE}.CONTADOR_POSICION_ENTREGA ;;
    #sql:SUM(${TABLE}.CONTADOR_POSICION_ENTREGA)/SUM(${TABLE}.CONTADOR_POSICION_ENTREGA+${TABLE}.CONTADOR_FACTURA)*100 ;;
    value_format: "0.0\%"
  }

#--------------METRICAS COUNT DRILL-------------------
measure: count {
   type: count
  drill_fields: []
  }
}
