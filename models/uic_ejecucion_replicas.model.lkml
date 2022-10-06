connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"
# include all views in the views/ folder in this project

explore: ejecucion_replicas {
  label: "Ejecucion Replicas"
  view_label: "Hechos-Tablas"

}
