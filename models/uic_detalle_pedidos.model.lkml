connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

# ---------------------------DETALLE DE PEDIDOS UIC---------------------------
explore: uic_detalle_pedidos {
  label: "Detalle de Pedidos UIC"
  view_label: "Hechos-Detalle Pedidos"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}});;
  #AND ${dim_material.tipo_material}='Z001';;


  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${uic_detalle_pedidos.material} = ${dim_material.cve_material};;
    type:  left_outer
  }

  join: dim_cliente_destina {
    view_label: "Cliente Destino"
    relationship: many_to_one
    sql_on: ${uic_detalle_pedidos.destinatario_mcia} = ${dim_cliente_destina.cve_clave};;
    type: left_outer
  }

  join: dim_cliente_solicitante {
    view_label: "Cliente Solicita"
    relationship: many_to_one
    sql_on:  ${uic_detalle_pedidos.solicitante} = ${dim_cliente_solicitante.cve_clave};;
    type: left_outer
  }

  #join: cat_motivo_rechazo_pedido {
  #  view_label: "Motivo Rechazo"
  #  relationship: many_to_one
  #  sql_on:  ${uic_detalle_pedidos.solicitante.cve_motivo_rechazo}  = ${cat_motivo_rechazo_pedido.cve_motivo_rechazo};;
  #  type: left_outer
  #}

}
