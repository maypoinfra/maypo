connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


explore: error_log {
  label: "Log de Cargas Maypo"
  view_label: "Hechos-ErrorLog"


}
