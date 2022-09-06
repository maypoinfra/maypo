view: dim_proveedor {
  sql_table_name: `proyectos-maypo.DWH.DIM_PROVEEDOR`
    ;;

  dimension: cve_proveedor {
    primary_key: yes
    type: string
    sql: COALESCE(${TABLE}.CVE_PROVEEDOR,0) ;;
  }

  dimension: altitud {
    type: number
    sql: ${TABLE}.ALTITUD ;;
  }

  dimension: apartado {
    type: string
    sql: ${TABLE}.APARTADO ;;
  }

  dimension: calle_num {
    type: string
    sql: ${TABLE}.CALLE_NUM ;;
  }

  dimension: campo_clasificacion {
    type: string
    sql: ${TABLE}.CAMPO_CLASIFICACION ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: changed {
    type: string
    sql: ${TABLE}.CHANGED ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.CIUDAD ;;
  }

  dimension: cod_postal {
    type: string
    sql: ${TABLE}.COD_POSTAL ;;
  }

  dimension: cod_postal_ap {
    type: string
    sql: ${TABLE}.COD_POSTAL_AP ;;
  }

  dimension: cod_postal_gis {
    type: string
    sql: ${TABLE}.COD_POSTAL_GIS ;;
  }

  dimension: cve_estado {
    type: string
    sql: ${TABLE}.CVE_ESTADO ;;
  }

  dimension: cve_idioma {
    type: string
    sql: ${TABLE}.CVE_IDIOMA ;;
  }

  dimension: cve_pais {
    type: string
    sql: ${TABLE}.CVE_PAIS ;;
  }

  dimension: cve_ramo {
    type: string
    sql: ${TABLE}.CVE_RAMO ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.DIRECCION ;;
  }

  dimension: distrito {
    type: string
    sql: ${TABLE}.DISTRITO ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.ESTADO ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.FAX ;;
  }

  dimension_group: fecha_carga {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: grp_ctas_deu {
    type: string
    sql: ${TABLE}.GRP_CTAS_DEU ;;
  }

  dimension: id_fuente_gis {
    type: string
    sql: ${TABLE}.ID_FUENTE_GIS ;;
  }

  dimension: ind_accnt {
    type: string
    sql: ${TABLE}.IND_ACCNT ;;
  }

  dimension: ind_comprec {
    type: string
    sql: ${TABLE}.IND_COMPREC ;;
  }

  dimension: inter_comer {
    type: string
    sql: ${TABLE}.INTER_COMER ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.LATITUD ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.LONGITUD ;;
  }

  dimension: nombre_1 {
    type: string
    sql: ${TABLE}.NOMBRE_1 ;;
  }

  dimension: nombre_2 {
    type: string
    sql: ${TABLE}.NOMBRE_2 ;;
  }

  dimension: nombre_3 {
    type: string
    sql: ${TABLE}.NOMBRE_3 ;;
  }

  dimension: num_duns {
    type: number
    sql: ${TABLE}.NUM_DUNS ;;
  }

  dimension: num_id_fis_1 {
    type: string
    sql: ${TABLE}.NUM_ID_FIS_1 ;;
  }

  dimension: num_id_fis_2 {
    type: string
    sql: ${TABLE}.NUM_ID_FIS_2 ;;
  }

  dimension: num_id_fis_3 {
    type: string
    sql: ${TABLE}.NUM_ID_FIS_3 ;;
  }

  dimension: num_soc {
    type: string
    sql: ${TABLE}.NUM_SOC ;;
  }

  dimension: objvers {
    type: string
    sql: ${TABLE}.OBJVERS ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: pob_apartado {
    type: string
    sql: ${TABLE}.POB_APARTADO ;;
  }

  dimension: precision_gis {
    type: number
    sql: ${TABLE}.PRECISION_GIS ;;
  }

  dimension: puesto_desc {
    type: string
    sql: ${TABLE}.PUESTO_DESC ;;
  }

  dimension: sist_fuente {
    type: string
    sql: ${TABLE}.SIST_FUENTE ;;
  }

  dimension: sr_proveedor {
    type: number
    sql: COALESCE(${TABLE}.SR_PROVEEDOR,0) ;;
  }

  dimension: zn_transp {
    type: string
    sql: ${TABLE}.ZN_TRANSP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
