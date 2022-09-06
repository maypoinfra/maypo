view: dim_lote {
  sql_table_name: `proyectos-maypo.DWH.DIM_LOTE`
    ;;

  dimension: bicz1_m2008 {
    type: string
    sql: ${TABLE}.BICZ1M2008 ;;
  }

  dimension: codbar_pemex {
    type: string
    sql: ${TABLE}.CODBAR_PEMEX ;;
  }

  dimension: costo_compra_umm {
    type: number
    sql: ${TABLE}.COSTO_COMPRA_UMM ;;
  }

  dimension: costo_unitario_compra {
    type: number
    sql: ${TABLE}.COSTO_UNITARIO_COMPRA ;;
  }

  dimension: cve_lote {
    type: string
    sql: ${TABLE}.CVE_LOTE ;;
  }

  dimension: cve_material {
    type: string
    sql: ${TABLE}.CVE_MATERIAL ;;
  }

  dimension: descrip_pemex {
    type: string
    sql: ${TABLE}.DESCRIP_PEMEX ;;
  }

  dimension: docto_compra {
    type: string
    sql: ${TABLE}.DOCTO_COMPRA ;;
  }

  dimension: fact_prov {
    type: string
    sql: ${TABLE}.FACT_PROV ;;
  }

  dimension_group: fecha_caducidad {
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
    sql: ${TABLE}.FECHA_CADUCIDAD ;;
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

  dimension_group: fecha_pedim {
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
    sql: ${TABLE}.FECHA_PEDIM ;;
  }

  dimension_group: fecha_preferente {
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
    sql: ${TABLE}.FECHA_PREFERENTE ;;
  }

  dimension: id_protocolo {
    type: string
    sql: ${TABLE}.ID_PROTOCOLO ;;
  }

  dimension: id_prov {
    type: string
    sql: ${TABLE}.ID_PROV ;;
  }

  dimension: ind_modif {
    type: string
    sql: ${TABLE}.IND_MODIF ;;
  }

  dimension: inv_estrategico {
    type: string
    sql: ${TABLE}.INV_ESTRATEGICO ;;
  }

  dimension: lote_largo {
    type: string
    sql: ${TABLE}.LOTE_LARGO ;;
  }

  dimension: lote_maypo {
    type: string
    sql: ${TABLE}.LOTE_MAYPO ;;
  }

  dimension: lote_prov {
    type: string
    sql: ${TABLE}.LOTE_PROV ;;
  }

  dimension: mon_local {
    type: string
    sql: ${TABLE}.MON_LOCAL ;;
  }

  dimension: num_dun {
    type: string
    sql: ${TABLE}.NUM_DUN ;;
  }

  dimension: num_loteprov {
    type: string
    sql: ${TABLE}.NUM_LOTEPROV ;;
  }

  dimension: num_ordcompra {
    type: string
    sql: ${TABLE}.NUM_ORDCOMPRA ;;
  }

  dimension: num_pedim {
    type: string
    sql: ${TABLE}.NUM_PEDIM ;;
  }

  dimension: numnom_aduana {
    type: string
    sql: ${TABLE}.NUMNOM_ADUANA ;;
  }

  dimension: procedencia {
    type: string
    sql: ${TABLE}.PROCEDENCIA ;;
  }

  dimension: prov_compra {
    type: string
    sql: ${TABLE}.PROV_COMPRA ;;
  }

  dimension: sku_sc {
    type: string
    sql: ${TABLE}.SKU_SC ;;
  }

  dimension: sr_lote {
    type: number
    sql: ${TABLE}.SR_LOTE ;;
  }

  dimension: temp_recibo {
    type: string
    sql: ${TABLE}.TEMP_RECIBO ;;
  }

  dimension: vers_obj {
    type: string
    sql: ${TABLE}.VERS_OBJ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
