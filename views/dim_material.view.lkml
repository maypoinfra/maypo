view: dim_material {
  sql_table_name: `proyectos-maypo.DWH.DIM_MATERIAL`
    ;;

 dimension: sr_material {
    primary_key: yes
    type: number
    sql: ${TABLE}.SR_MATERIAL ;;
  }

  dimension: af_color {
    type: string
    sql: ${TABLE}.AF_COLOR ;;
  }

  dimension: altura {
    type: number
    sql: ${TABLE}.ALTURA ;;
  }

  dimension: amb_val_car1 {
    type: string
    sql: ${TABLE}.AMB_VAL_CAR1 ;;
  }

  dimension: amb_val_car2 {
    type: string
    sql: ${TABLE}.AMB_VAL_CAR2 ;;
  }

  dimension: ancho {
    type: number
    sql: ${TABLE}.ANCHO ;;
  }

  dimension: anio_dtempo {
    type: string
    sql: ${TABLE}.ANIO_DTEMPO ;;
  }

  dimension: anio_tempo {
    type: number
    sql: ${TABLE}.ANIO_TEMPO ;;
  }

  dimension: biczdesprvr {
    type: string
    sql: ${TABLE}.BICZDESPRVR ;;
  }

  dimension: carac_eval_gral {
    type: string
    sql: ${TABLE}.CARAC_EVAL_GRAL ;;
  }

  dimension: ccb {
    type: string
    sql: ${TABLE}.CCB ;;
  }

  dimension: change_mode {
    type: string
    sql: ${TABLE}.CHANGE_MODE ;;
  }

  dimension: changed {
    type: string
    sql: ${TABLE}.CHANGED ;;
  }

  dimension: clas_certi {
    type: string
    sql: ${TABLE}.CLAS_CERTI ;;
  }

  dimension: clas_constru {
    type: string
    sql: ${TABLE}.CLAS_CONSTRU ;;
  }

  dimension: clas_func {
    type: string
    sql: ${TABLE}.CLAS_FUNC ;;
  }

  dimension: clas_licencia {
    type: string
    sql: ${TABLE}.CLAS_LICENCIA ;;
  }

  dimension: clave_12_dig {
    type: string
    sql: ${TABLE}.CLAVE_12DIG ;;
  }

  dimension: clave_14_dig {
    type: string
    sql: ${TABLE}.CLAVE_14DIG ;;
  }

  dimension: clave_cb {
    type: string
    sql: ${TABLE}.CLAVE_CB ;;
  }

  dimension: clave_saica {
    type: string
    sql: ${TABLE}.CLAVE_SAICA ;;
  }

  dimension: cod_clas_atc {
    type: string
    sql: ${TABLE}.COD_CLAS_ATC ;;
  }

  dimension: cod_comp_tejido {
    type: string
    sql: ${TABLE}.COD_COMP_TEJIDO ;;
  }

  dimension: cod_material {
    type: string
    sql: ${TABLE}.COD_MATERIAL ;;
  }

  dimension: coleccion {
    type: string
    sql: ${TABLE}.COLECCION ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.COLOR ;;
  }

  dimension: competencia {
    type: string
    sql: ${TABLE}.COMPETENCIA ;;
  }

  dimension: concentracion {
    type: string
    sql: ${TABLE}.CONCENTRACION ;;
  }

  dimension: cont_neto {
    type: number
    sql: ${TABLE}.CONT_NETO ;;
  }

  dimension: contenido_nt {
    type: number
    sql: ${TABLE}.CONTENIDO_NT ;;
  }

  dimension: cve_cond_alm {
    type: string
    sql: ${TABLE}.CVE_COND_ALM ;;
  }

  dimension: cve_cond_temp {
    type: string
    sql: ${TABLE}.CVE_COND_TEMP ;;
  }

  dimension: cve_grp_art {
    type: string
    sql: ${TABLE}.CVE_GRP_ART ;;
  }

  dimension: cve_grp_trans {
    type: string
    sql: ${TABLE}.CVE_GRP_TRANS ;;
  }

  dimension: cve_jprod {
    type: string
    sql: ${TABLE}.CVE_JPROD ;;
  }

  dimension: cve_material {
    type: string
    sql: ${TABLE}.CVE_MATERIAL ;;
  }

  dimension: cve_sector {
    type: string
    sql: ${TABLE}.CVE_SECTOR ;;
  }

  dimension: denom_estandar {
    type: string
    sql: ${TABLE}.DENOM_ESTANDAR ;;
  }

  dimension: des_gerlinea {
    type: string
    sql: ${TABLE}.DES_GERLINEA ;;
  }

  dimension: desc_cond_alm {
    type: string
    sql: ${TABLE}.DESC_COND_ALM ;;
  }

  dimension: desc_cond_temp {
    type: string
    sql: ${TABLE}.DESC_COND_TEMP ;;
  }

  dimension: desc_grp_art {
    type: string
    sql: ${TABLE}.DESC_GRP_ART ;;
  }

  dimension: desc_grp_mat {
    type: string
    sql: ${TABLE}.DESC_GRP_MAT ;;
  }

  dimension: desc_grp_trans {
    type: string
    sql: ${TABLE}.DESC_GRP_TRANS ;;
  }

  dimension: desc_jer_prods {
    type: string
    sql: ${TABLE}.DESC_JER_PRODS ;;
  }

  dimension: desc_larga {
    type: string
    sql: ${TABLE}.DESC_LARGA ;;
  }

  dimension: desc_sector {
    type: string
    sql: ${TABLE}.DESC_SECTOR ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.DESCRIPCION ;;
  }

  dimension: dias_vidautil {
    type: string
    sql: ${TABLE}.DIAS_VIDAUTIL ;;
  }

  dimension: ean_upc {
    type: string
    sql: ${TABLE}.EAN_UPC ;;
  }

  dimension: empaq_prod {
    type: string
    sql: ${TABLE}.EMPAQ_PROD ;;
  }

  dimension: entitycntr {
    type: string
    sql: ${TABLE}.ENTITYCNTR ;;
  }

  dimension: familia_producto {
    type: string
    sql: ${TABLE}.FAMILIA_PROD ;;
  }

  dimension: fabricante {
    type: string
    sql: ${TABLE}.FABRICANTE ;;
  }

  dimension_group: fe_creacion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FE_CREACION ;;
  }

  dimension_group: fe_emi_regsan {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FE_EMI_REGSAN ;;
  }

  dimension_group: fe_expira {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FE_EXPIRA ;;
  }

  dimension_group: fe_ven_patent {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FE_VEN_PATENT ;;
  }

  dimension_group: fe_ven_regsan {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FE_VEN_REGSAN ;;
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

  dimension: forma_farma {
    type: string
    sql: ${TABLE}.FORMA_FARMA ;;
  }

  dimension: fuente_aprov {
    type: string
    sql: ${TABLE}.FUENTE_APROV ;;
  }

  dimension: gerente_linea {
    type: string
    sql: ${TABLE}.GERENTE_LINEA ;;
  }

  dimension: grado_moda {
    type: string
    sql: ${TABLE}.GRADO_MODA ;;
  }

  dimension: grp_art_ext {
    type: string
    sql: ${TABLE}.GRP_ART_EXT ;;
  }

  dimension: grupo_mats {
    type: string
    sql: ${TABLE}.GRUPO_MATS ;;
  }

  dimension: grupo_objetivo {
    type: string
    sql: ${TABLE}.GRUPO_OBJETIVO ;;
  }

  dimension: identif_impu {
    type: string
    sql: ${TABLE}.IDENTIF_IMPU ;;
  }

  dimension: ind_cat1 {
    type: string
    sql: ${TABLE}.IND_CAT1 ;;
  }

  dimension: ind_cat2 {
    type: string
    sql: ${TABLE}.IND_CAT2 ;;
  }

  dimension: ind_cat3 {
    type: string
    sql: ${TABLE}.IND_CAT3 ;;
  }

  dimension: ind_mat_impor {
    type: string
    sql: ${TABLE}.IND_MAT_IMPOR ;;
  }

  dimension: ind_narco {
    type: string
    sql: ${TABLE}.IND_NARCO ;;
  }

  dimension: ind_sus_peli {
    type: string
    sql: ${TABLE}.IND_SUS_PELI ;;
  }

  dimension: interseccion {
    type: string
    sql: ${TABLE}.INTERSECCION ;;
  }

  dimension: invenminumu {
    type: string
    sql: ${TABLE}.INVENMINUMU ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.LONGITUD ;;
  }

  dimension: marc_borrado {
    type: string
    sql: ${TABLE}.MARC_BORRADO ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.MARCA ;;
  }

  dimension: mat_config {
    type: string
    sql: ${TABLE}.MAT_CONFIG ;;
  }

  dimension: mat_laboratorio {
    type: string
    sql: ${TABLE}.MAT_LABORATORIO ;;
  }

  dimension: mat_num_haz {
    type: string
    sql: ${TABLE}.MAT_NUM_HAZ ;;
  }

  dimension: materia {
    type: string
    sql: ${TABLE}.MATERIA ;;
  }

  dimension: matriz {
    type: string
    sql: ${TABLE}.MATRIZ ;;
  }

  dimension: med_esen_csg {
    type: string
    sql: ${TABLE}.MED_ESEN_CSG ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}.MONEDA ;;
  }

  dimension: niv_jer_prod1 {
    type: string
    sql: ${TABLE}.NIV_JER_PROD1 ;;
  }

  dimension: niv_jer_prod2 {
    type: string
    sql: ${TABLE}.NIV_JER_PROD2 ;;
  }

  dimension: niv_jer_prod3 {
    type: string
    sql: ${TABLE}.NIV_JER_PROD3 ;;
  }

  dimension: niv_jer_prod4 {
    type: string
    sql: ${TABLE}.NIV_JER_PROD4 ;;
  }

  dimension: nivel_atn {
    type: string
    sql: ${TABLE}.NIVEL_ATN ;;
  }

  dimension: no_mat_anti_ccb {
    type: string
    sql: ${TABLE}.NO_MAT_ANTI_CCB ;;
  }

  dimension: no_pieza_fab {
    type: string
    sql: ${TABLE}.NO_PIEZA_FAB ;;
  }

  dimension: nom_progr {
    type: string
    sql: ${TABLE}.NOM_PROGR ;;
  }

  dimension: objvers {
    type: string
    sql: ${TABLE}.OBJVERS ;;
  }

  dimension: part_presu {
    type: string
    sql: ${TABLE}.PART_PRESU ;;
  }

  dimension: ped_requerido {
    type: string
    sql: ${TABLE}.PED_REQUERIDO ;;
  }

  dimension: peso_br {
    type: number
    sql: ${TABLE}.PESO_BR ;;
  }

  dimension: peso_neto {
    type: number
    sql: ${TABLE}.PESO_NETO ;;
  }

  dimension: precio_compra_pl {
    type: string
    sql: ${TABLE}.PRECIO_COMPRA_PL ;;
  }

  dimension: presen_prod {
    type: string
    sql: ${TABLE}.PRESEN_PROD ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.PRODUCTO ;;
  }

  dimension: producto_bbp {
    type: string
    sql: ${TABLE}.PRODUCTO_BBP ;;
  }

  dimension: producto_crm {
    type: string
    sql: ${TABLE}.PRODUCTO_CRM ;;
  }

  dimension: prof_peli {
    type: string
    sql: ${TABLE}.PROF_PELI ;;
  }

  dimension: prov_reportes {
    type: string
    sql: ${TABLE}.PROV_REPORTES ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.PROVEEDOR ;;
  }

  dimension: ramo {
    type: string
    sql: ${TABLE}.RAMO ;;
  }

  dimension: reg_ssa {
    type: string
    sql: ${TABLE}.REG_SSA ;;
  }

  dimension: regla_aprov {
    type: string
    sql: ${TABLE}.REGLA_APROV ;;
  }

  dimension: sistema_fuente {
    type: string
    sql: ${TABLE}.SISTEMA_FUENTE ;;
  }

  dimension: stat_real_dat {
    type: string
    sql: ${TABLE}.STAT_REAL_DAT ;;
  }

  dimension: sus_act1 {
    type: string
    sql: ${TABLE}.SUS_ACT1 ;;
  }

  dimension: sus_act2 {
    type: string
    sql: ${TABLE}.SUS_ACT2 ;;
  }

  dimension: sus_act3 {
    type: string
    sql: ${TABLE}.SUS_ACT3 ;;
  }

  dimension: sus_act4 {
    type: string
    sql: ${TABLE}.SUS_ACT4 ;;
  }

  dimension: sust_activa1 {
    type: string
    sql: ${TABLE}.SUST_ACTIVA1 ;;
  }

  dimension: sust_activa2 {
    type: string
    sql: ${TABLE}.SUST_ACTIVA2 ;;
  }

  dimension: sust_activa3 {
    type: string
    sql: ${TABLE}.SUST_ACTIVA3 ;;
  }

  dimension: tam_dim {
    type: string
    sql: ${TABLE}.TAM_DIM ;;
  }

  dimension: tamanio {
    type: string
    sql: ${TABLE}.TAMANIO ;;
  }

  dimension: tamanio2 {
    type: string
    sql: ${TABLE}.TAMANIO2 ;;
  }

  dimension: tip_band_precio {
    type: string
    sql: ${TABLE}.TIP_BAND_PRECIO ;;
  }

  dimension: tip_tempo {
    type: string
    sql: ${TABLE}.TIP_TEMPO ;;
  }

  dimension: tipo_cat {
    type: string
    sql: ${TABLE}.TIPO_CAT ;;
  }

  dimension: tipo_cat_med {
    type: string
    sql: ${TABLE}.TIPO_CAT_MED ;;
  }

  dimension: tipo_clave {
    type: string
    sql: ${TABLE}.TIPO_CLAVE ;;
  }

  dimension: tipo_insumo {
    type: string
    sql: ${TABLE}.TIPO_INSUMO ;;
  }

  dimension: tipo_material {
    type: string
    sql: ${TABLE}.TIPO_MATERIAL ;;
  }

  dimension: unidad_dc {
    type: string
    sql: ${TABLE}.UNIDAD_DC ;;
  }

  dimension: unidad_dim {
    type: string
    sql: ${TABLE}.UNIDAD_DIM ;;
  }

  dimension: unidad_mb {
    type: string
    sql: ${TABLE}.UNIDAD_MB ;;
  }

  dimension: unidad_mpr {
    type: string
    sql: ${TABLE}.UNIDAD_MPR ;;
  }

  dimension: unidad_peso {
    type: string
    sql: ${TABLE}.UNIDAD_PESO ;;
  }

  dimension: unidad_vol {
    type: string
    sql: ${TABLE}.UNIDAD_VOL ;;
  }

  dimension: utilizacion {
    type: string
    sql: ${TABLE}.UTILIZACION ;;
  }

  dimension: via_admin {
    type: string
    sql: ${TABLE}.VIA_ADMIN ;;
  }

  dimension: volumen {
    type: number
    sql: ${TABLE}.VOLUMEN ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
