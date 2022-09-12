view: derived_seguimiento_pedido_entrega {
  derived_table: {
    sql: SELECT ROWNUM, DOCUMENTO_MODELO, POSICION_MODELO,CONTRATO_CLIENTE,
                FECHA_CREACION_PEDIDO,FECHA_ARE, LOTE, MATERIAL, CANTIDAD_PEDIDO, CANTIDAD_ENTREGA
            FROM proyectos-maypo.ODS.SEGUIMIENTO_PEDIDO_ENTREGA;;
}

  dimension: rownum {
    primary_key: yes
    label:"RowNum"
    type: number
    sql: ${TABLE}.ROWNUM ;;
  }

  dimension: DOCUMENTO_MODELO {
    label:"DOCUMENTO_MODELO"
    type: string
    sql: ${TABLE}.DOCUMENTO_MODELO;;
  }

  dimension: POSICION_MODELO {
    label:"POSICION_MODELO"
    type: number
    sql: ${TABLE}.POSICION_MODELO;;
  }

  dimension: CONTRATO_CLIENTE {
    label:"CONTRATO_CLIENTE"
    type: string
    sql: ${TABLE}.CONTRATO_CLIENTE;;
  }

  dimension: FECHA_CREACION_PEDIDO {
    label:"FECHA_CREACION_PEDIDO"
    type: date
    sql: ${TABLE}.FECHA_CREACION_PEDIDO;;
  }

  dimension: FECHA_ARE {
    label:"FECHA_ARE"
    type: date
    sql: ${TABLE}.FECHA_ARE;;
  }

  dimension: LOTE {
    label:"LOTE"
    type: string
    sql: ${TABLE}.LOTE;;
  }

  dimension: MATERIAL {
    label:"Material"
    type: string
    sql: ${TABLE}.MATERIAL ;;
  }

  dimension: CANTIDAD_PEDIDO {
    label:"CANTIDAD_PEDIDO"
    type: number
    sql: ${TABLE}.CANTIDAD_PEDIDO ;;
  }

  dimension: CANTIDAD_ENTREGA {
    label:"CANTIDAD_ENTREGA"
    type: number
    sql: ${TABLE}.CANTIDAD_ENTREGA ;;
  }

}
