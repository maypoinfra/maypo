connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


explore: zsd_carga_maypo {
  label: "Cargas Maypo"
  view_label: "Hechos-Tablas"

  join: dim_tiempo {
    view_label: "Tiempo"
    relationship: many_to_one
    sql_on:  ${zsd_carga_maypo.fecha_carga_date}  = ${dim_tiempo.fecha_date};;
    type: inner
  }
}
