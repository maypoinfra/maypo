connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: seguimiento_factura_entrega {
  label: "Seguimiento a Facturas UIC"
  view_label: "Hechos-Seguimiento a Factura"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}})
    AND ${dim_material.tipo_material}='Z001';;


  join: dim_cliente_destina {
    view_label: "Cliente"
    relationship: many_to_one
    sql_on: ${seguimiento_factura_entrega.sr_cliente} = ${dim_cliente_destina.sr_cliente};;
    type: left_outer
  }

  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${seguimiento_factura_entrega.sr_material} = ${dim_material.cve_material};;
    type:  left_outer
  }



}
