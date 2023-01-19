view: dlt_cat_estadosmx {
  sql_table_name: `proyectos-maypo.DSA.DLT_CAT_ESTADOSMX`
    ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.ESTADO ;;
  }

  dimension: latitud {
    type: string
    sql: ${TABLE}.LATITUD ;;
  }

  dimension: longitud {
    type: string
    sql: ${TABLE}.LONGITUD ;;
  }

  dimension: metrica {
    type: number
    sql: ${TABLE}.METRICA ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
