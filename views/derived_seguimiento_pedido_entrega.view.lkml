view: derived_seguimiento_pedido_entrega {
  derived_table: {
    sql: SELECT ROWNUM, DOCUMENTO_MODELO, POSICION_MODELO,CONTRATO_CLIENTE,
                FECHA_CREACION_PEDIDO,FECHA_ARE, LOTE, MATERIAL, CANTIDAD_PEDIDO, CANTIDAD_ENTREGA
            FROM proyectos-maypo.ODS.SEGUIMIENTO_PEDIDO_ENTREGA
      WHERE 1=1
      {% if fecha_creacion_are._parameter_value == true %}
        AND FECHA_CREACION_PEDIDO >= CAST( {% parameter creacion_date_param_ini %} AS DATE)
        AND FECHA_CREACION_PEDIDO <= CAST( {% parameter creacion_date_param_end %} AS DATE)
      {% endif %}
      {% if fecha_creacion_are._parameter_value == false %}
         AND FECHA_ARE >= CAST( {% parameter are_date_param_ini %} AS DATE)
         AND FECHA_ARE <= CAST( {% parameter are_date_param_end %} AS DATE)
      {% endif %}
      ;;
  }

  parameter: fecha_creacion_are {
    type: yesno
    description: "Fecha: Creacion / Are"
  }

  parameter: creacion_date_param_ini {
    type: date
    description: "Creacion Fecha Inicio"
  }

  parameter: creacion_date_param_end {
    type: date
    description: "Creacion Fecha Fin"
  }

  parameter: are_date_param_ini {
    type: date
    description: "Are Fecha Inicio"
  }

  parameter: are_date_param_end {
    type: date
    description: "Are Fecha Fin"
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
