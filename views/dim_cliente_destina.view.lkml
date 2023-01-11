view: dim_cliente_destina {
  sql_table_name: `proyectos-maypo.DWH.DIM_CLIENTE`
    ;;

  dimension: sr_cliente {
    primary_key: yes
    type: number
    sql: ${TABLE}.SR_CLIENTE ;;
  }

  dimension: altitud {
    type: number
    sql: ${TABLE}.ALTITUD ;;
  }

  dimension: grupo_clientes {
    type: string
    sql: CASE WHEN SUBSTR(GRUPO_CLIENTES,1,8) = 'CLIENTES' THEN
                   SUBSTR(GRUPO_CLIENTES,10,22)
              WHEN SUBSTR(GRUPO_CLIENTES,1,12) = 'STD CLIENTES' THEN
                   SUBSTR(GRUPO_CLIENTES,14,22)
              ELSE
                   GRUPO_CLIENTES
          END;;
  }

  dimension: apartado {
    type: string
    sql: ${TABLE}.APARTADO ;;
  }

  dimension: calle_numero {
    type: string
    sql: ${TABLE}.CALLE_NUMERO ;;
  }

  dimension: camp_clas {
    type: string
    sql: ${TABLE}.CAMP_CLAS ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: clas_ctes {
    type: string
    sql: ${TABLE}.CLAS_CTES ;;
  }

  dimension: clue_umu {
    type: string
    sql: ${TABLE}.CLUE_UMU ;;
  }

  dimension: cod_postal {
    type: string
    sql: ${TABLE}.COD_POSTAL ;;
  }

  dimension: cod_postal_apart {
    type: string
    sql: ${TABLE}.COD_POSTAL_APART ;;
  }

  dimension: cod_postal_geo {
    type: string
    sql: ${TABLE}.COD_POSTAL_GEO ;;
  }

  dimension: cod_sec1 {
    type: string
    sql: ${TABLE}.COD_SEC1 ;;
  }

  dimension: cod_sec2 {
    type: string
    sql: ${TABLE}.COD_SEC2 ;;
  }

  dimension: cod_sec3 {
    type: string
    sql: ${TABLE}.COD_SEC3 ;;
  }

  dimension: cod_sec4 {
    type: string
    sql: ${TABLE}.COD_SEC4 ;;
  }

  dimension: cod_sec5 {
    type: string
    sql: ${TABLE}.COD_SEC5 ;;
  }

  dimension: cod_znventa {
    type: string
    sql: ${TABLE}.COD_ZNVENTA ;;
  }

  dimension: codsap_gtevta {
    type: string
    sql: ${TABLE}.CODSAP_GTEVTA ;;
  }

  dimension: comentarios {
    type: string
    sql: ${TABLE}.COMENTARIOS ;;
  }

  dimension: concep_bus1 {
    type: string
    sql: ${TABLE}.CONCEP_BUS1 ;;
  }

  dimension: concep_bus2 {
    type: string
    sql: ${TABLE}.CONCEP_BUS2 ;;
  }

  dimension: cta_clave {
    type: string
    sql: ${TABLE}.CTA_CLAVE ;;
  }

  dimension: cte_consfin {
    type: string
    sql: ${TABLE}.CTE_CONSFIN ;;
  }

  dimension: cve_clave {
    type: string
    sql: ${TABLE}.CVE_CLAVE ;;
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

  dimension: descrip_concepbus {
    type: string
    sql: ${TABLE}.DESCRIP_CONCEPBUS ;;
  }

  dimension: descrip_cte {
    type: string
    sql: ${TABLE}.DESCRIP_CTE ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.DIRECCION ;;
  }

  dimension: distrito {
    type: string
    sql: ${TABLE}.DISTRITO ;;
  }

  dimension: distrito_nielsen {
    type: string
    sql: ${TABLE}.DISTRITO_NIELSEN ;;
  }

  dimension: ejec_negocio {
    type: string
    sql: ${TABLE}.EJEC_NEGOCIO ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.ESTADO ;;
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

  dimension: fecha_of {
    type: string
    sql: ${TABLE}.FECHA_OF ;;
  }

  dimension: grp_ctas_deu {
    type: string
    sql: ${TABLE}.GRP_CTAS_DEU ;;
  }

  dimension: id_clisc {
    type: string
    sql: ${TABLE}.ID_CLISC ;;
  }

  dimension: id_fuentegeo {
    type: string
    sql: ${TABLE}.ID_FUENTEGEO ;;
  }

  dimension: ind_change {
    type: string
    sql: ${TABLE}.IND_CHANGE ;;
  }

  dimension: ind_comparacion {
    type: string
    sql: ${TABLE}.IND_COMPARACION ;;
  }

  dimension: ind_ota {
    type: string
    sql: ${TABLE}.IND_OTA ;;
  }

  dimension: ind_utilmat {
    type: string
    sql: ${TABLE}.IND_UTILMAT ;;
  }

  dimension: inter_comercial {
    type: string
    sql: ${TABLE}.INTER_COMERCIAL ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.LATITUD ;;
  }

  dimension: latitud_umu {
    type: string
    sql: ${TABLE}.LATITUD_UMU ;;
  }

  dimension: lid_territorial {
    type: string
    sql: ${TABLE}.LID_TERRITORIAL ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.LOCALIDAD ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.LONGITUD ;;
  }

  dimension: longitud_umu {
    type: string
    sql: ${TABLE}.LONGITUD_UMU ;;
  }

  dimension: merc_ctes {
    type: string
    sql: ${TABLE}.MERC_CTES ;;
  }

  dimension: no_oficio {
    type: string
    sql: ${TABLE}.NO_OFICIO ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
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

  dimension: nomenclatura {
    type: string
    sql: ${TABLE}.NOMENCLATURA ;;
  }

  dimension: num_duns {
    type: number
    sql: ${TABLE}.NUM_DUNS ;;
  }

  dimension: num_sap_dcclientes {
    type: string
    sql: ${TABLE}.NUM_SAP_DCCLIENTES ;;
  }

  dimension: num_socgl {
    type: string
    sql: ${TABLE}.NUM_SOCGL ;;
  }

  dimension: num_telefax {
    type: string
    sql: ${TABLE}.NUM_TELEFAX ;;
  }

  dimension: num_telefono {
    type: string
    sql: ${TABLE}.NUM_TELEFONO ;;
  }

  dimension: obj_vers {
    type: string
    sql: ${TABLE}.OBJ_VERS ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
  }

  dimension: pob_apartado {
    type: string
    sql: ${TABLE}.POB_APARTADO ;;
  }

  dimension: poblacion {
    type: string
    sql: ${TABLE}.POBLACION ;;
  }

  dimension: prec_ubicacion {
    type: number
    sql: ${TABLE}.PREC_UBICACION ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.PROVEEDOR ;;
  }

  dimension: ritmo_visita {
    type: string
    sql: ${TABLE}.RITMO_VISITA ;;
  }

  dimension: sis_fuente {
    type: string
    sql: ${TABLE}.SIS_FUENTE ;;
  }

  dimension: status_umu {
    type: string
    sql: ${TABLE}.STATUS_UMU ;;
  }

  dimension: tax_num1 {
    type: string
    sql: ${TABLE}.TAX_NUM1 ;;
  }

  dimension: tax_num2 {
    type: string
    sql: ${TABLE}.TAX_NUM2 ;;
  }

  dimension: tax_num3 {
    type: string
    sql: ${TABLE}.TAX_NUM3 ;;
  }

  dimension: tipo_umu {
    type: string
    sql: ${TABLE}.TIPO_UMU ;;
  }

  dimension: tp_sucursal {
    type: string
    sql: ${TABLE}.TP_SUCURSAL ;;
  }

  dimension: ubicacion {
    type: string
    sql: ${TABLE}.UBICACION ;;
  }

  dimension: var_ejercicio {
    type: string
    sql: ${TABLE}.VAR_EJERCICIO ;;
  }

  dimension: zn_venta {
    type: string
    sql: ${TABLE}.ZN_VENTA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
