connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: mapas {
  from: dlt_cat_estadosmx
  label: "Mapas prueba"
  view_label: "mapas"


}
