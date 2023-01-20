connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: fact_metricas_pack {
  label: "Fact metricas pack"
  view_label: "metricas"


  join: cat_estados_muni {
    view_label: "Estados-municipios"
    relationship: many_to_one
    sql_on: ${fact_metricas_pack.cve_entidad}  = ${cat_estados_muni.cve_entidad}
       AND  ${fact_metricas_pack.cve_municipio = ${cat_estados_muni.cve_municipio} ;;
    type: inner
  }

}
