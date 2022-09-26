connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: uic_seguimiento_factura_detalle {
  label: "Seguimiento a Facturas UIC"
  view_label: "Hechos-Seguimiento a Factura"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}})
    AND ${dim_material.tipo_material}='Z001';;

  join: dim_cliente_solicitante {
    view_label: "Cliente Sold"
    relationship: many_to_one
    sql_on: ${uic_seguimiento_factura_detalle.sr_sold_to} = ${dim_cliente_solicitante.cve_clave};;
    type: left_outer
  }


join: dim_cliente_destina {
  view_label: "Cliente Ship"
   relationship: many_to_one
   sql_on: ${uic_seguimiento_factura_detalle.sr_ship_to} = ${dim_cliente_destina.cve_clave};;
   type: left_outer
}

  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${uic_seguimiento_factura_detalle.material} = ${dim_material.cve_material};;
    type:  left_outer
  }

}
