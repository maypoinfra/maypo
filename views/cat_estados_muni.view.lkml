view: cat_estados_muni {
  sql_table_name: `proyectos-maypo.DSA.CAT_ESTADOS_MUNI`
    ;;

  dimension: map_points {
    type: location
    sql_latitude: ${lat_decimal} ;;
    sql_longitude: ${lon_decimal} ;;
  }

  dimension: lat_decimal {
    type: number
    sql: ${TABLE}.LAT_DECIMAL ;;
  }

  dimension: lon_decimal {
    type: number
    sql: ${TABLE}.LON_DECIMAL ;;
  }

  dimension: altitud {
    type: number
    sql: ${TABLE}.ALTITUD ;;
  }

  dimension: cve_entidad {
    type: number
    sql: ${TABLE}.CVE_ENTIDAD ;;
  }

  dimension: cve_localidad {
    type: number
    sql: ${TABLE}.CVE_LOCALIDAD ;;
  }

  dimension: cve_municipio {
    type: number
    sql: ${TABLE}.CVE_MUNICIPIO ;;
  }



  dimension: localidad {
    type: string
    sql: ${TABLE}.LOCALIDAD ;;
  }



  dimension: nom_abr {
    type: string
    sql: ${TABLE}.NOM_ABR ;;
  }

  dimension: nom_estado {
    type: string
    sql: ${TABLE}.NOM_ESTADO ;;
  }

  dimension: nom_municipio {
    type: string
    sql: ${TABLE}.NOM_MUNICIPIO ;;
  }

  dimension: pob_femenina {
    type: string
    sql: ${TABLE}.POB_FEMENINA ;;
  }

  dimension: pob_masculina {
    type: string
    sql: ${TABLE}.POB_MASCULINA ;;
  }

  dimension: pob_total {
    type: number
    sql: ${TABLE}.POB_TOTAL ;;
  }

  dimension: total_de_viviendas_habitadas {
    type: number
    sql: ${TABLE}.TOTAL_DE_VIVIENDAS_HABITADAS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
