view: dim_tiempo {
  sql_table_name: `DWH.DIM_TIEMPO`
    ;;

  dimension: cve_fecha {
    primary_key: yes
    type: number
    sql: ${TABLE}.cve_fecha ;;
  }

  dimension: cve_anio {
    type: number
    sql: ${TABLE}.cve_anio ;;
  }

  dimension: cve_anio_mes {
    type: number
    sql: ${TABLE}.cve_anio_mes ;;
  }

  dimension: cve_mes {
    type: number
    sql: ${TABLE}.cve_mes ;;
  }

  dimension: cve_trim_anio {
    type: number
    sql: ${TABLE}.cve_trim_anio ;;
  }

  dimension: cve_trimestre {
    type: number
    sql: ${TABLE}.cve_trimestre ;;
  }

  dimension: desc_trimestre {
    type: string
    sql: ${TABLE}.desc_trimestre ;;
  }

  dimension: dia_del_anio {
    type: number
    sql: ${TABLE}.dia_del_anio ;;
  }

  dimension: dia_del_mes {
    type: number
    sql: ${TABLE}.dia_del_mes ;;
  }

  dimension: dia_sem_corto {
    type: string
    sql: ${TABLE}.dia_sem_corto ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension_group: fch_primer_dia_mes {
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
    sql: ${TABLE}.fch_primer_dia_mes ;;
  }

  dimension_group: fch_ultimo_dia_mes {
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
    sql: ${TABLE}.fch_ultimo_dia_mes ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: fecha_dmesy_diag {
    type: string
    sql: ${TABLE}.fecha_dmesy_diag ;;
  }

  dimension: fecha_dmesy_guion {
    type: string
    sql: ${TABLE}.fecha_dmesy_guion ;;
  }

  dimension: fecha_dmy_diag {
    type: string
    sql: ${TABLE}.fecha_dmy_diag ;;
  }

  dimension: fecha_dmy_guion {
    type: string
    sql: ${TABLE}.fecha_dmy_guion ;;
  }

  dimension_group: fecha_fin_sem_dom {
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
    sql: ${TABLE}.fecha_fin_sem_dom ;;
  }

  dimension_group: fecha_fin_sem_lum {
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
    sql: ${TABLE}.fecha_fin_sem_lum ;;
  }

  dimension_group: fecha_ini_sem_dom {
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
    sql: ${TABLE}.fecha_ini_sem_dom ;;
  }

  dimension_group: fecha_ini_sem_lum {
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
    sql: ${TABLE}.fecha_ini_sem_lum ;;
  }

  dimension_group: fecha_movil_fin {
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
    sql: ${TABLE}.fecha_movil_fin ;;
  }

  dimension_group: fecha_movil_ini {
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
    sql: ${TABLE}.fecha_movil_ini ;;
  }

  dimension: fecha_ymesd_diag {
    type: string
    sql: ${TABLE}.fecha_ymesd_diag ;;
  }

  dimension: fecha_ymesd_guion {
    type: string
    sql: ${TABLE}.fecha_ymesd_guion ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
    order_by_field: cve_mes
  }

  dimension: mes_anio {
    type: string
    sql: ${TABLE}.mes_anio ;;
  }

  dimension: mes_corto {
    label: "Mes"
    type: string
    sql: ${TABLE}.mes_corto ;;
  }

  dimension: mes_corto_anio {
    type: string
    sql: ${TABLE}.mes_corto_anio ;;
  }

  dimension: mes_corto_dia {
    type: string
    sql: ${TABLE}.mes_corto_dia ;;
  }

  dimension: mes_movil_fin {
    type: string
    sql: ${TABLE}.mes_movil_fin ;;
  }

  dimension: mes_movil_ini {
    type: string
    sql: ${TABLE}.mes_movil_ini ;;
  }

  dimension: num_dia_semana {
    type: number
    sql: ${TABLE}.num_dia_semana ;;
  }

  dimension: num_sem_anio {
    type: number
    sql: ${TABLE}.num_sem_anio ;;
  }

  dimension: num_semana_anio {
    type: number
    sql: ${TABLE}.num_semana_anio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


  parameter: time_period {
    type: unquoted
    allowed_value: {
      value: "YTD"
                   }
  }

  dimension: Year_to_Date {
    type: yesno
    group_label: "YTD"
    label: "YTD?"
    view_label: "YTD"
    sql: ${TABLE}.fecha > DATE_ADD(DATE_TRUNC(CURRENT_DATE('America/Mexico_City'), YEAR), INTERVAL -3 YEAR);;
  }
}
