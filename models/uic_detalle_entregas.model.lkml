connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

# ---------------------------DETALLE DE ENTREGAS UIC---------------------------
explore: uic_detalle_entregas {
  label: "Detalle de Entregas UIC"
  view_label: "Hechos-Detalle Entregas"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}});;
  #AND ${dim_material.tipo_material}='Z001';;


  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${uic_detalle_entregas.material} = ${dim_material.cve_material};;
    type:  left_outer
  }

  join: dim_cliente_destina {
    view_label: "Cliente Destino"
    relationship: many_to_one
    sql_on: ${uic_detalle_entregas.destinatario_mcia} = ${dim_cliente_destina.cve_clave};;
    type: left_outer
  }

  join: dim_tiempo {
    view_label: "Tiempo"
    relationship: many_to_one
    sql_on:  ${uic_detalle_entregas.cve_fecha}  = ${dim_tiempo.cve_fecha};;
    type: inner
  }

  join: dim_lote {
    view_label: "Lotes"
    relationship: many_to_one
    sql_on: ${dim_lote.cve_material} = ${uic_detalle_entregas.material}
        AND ${dim_lote.cve_lote}     = ${uic_detalle_entregas.lote};;
    type:  left_outer
  }

}
