connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: seguimiento_pedido_entrega {
  label: "Seguimiento a Pedidos y Entrega UIC"
  view_label: "Hechos-Seguimiento a pedido y entrega"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}})
  AND ${dim_material.tipo_material}='Z001';;


  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${seguimiento_pedido_entrega.material} = ${dim_material.cve_material};;
    type:  left_outer
  }

  join: dim_cliente_destina {
    view_label: "Cliente Destino"
    relationship: many_to_one
    sql_on: ${seguimiento_pedido_entrega.destinatario_mcia} = ${dim_cliente_destina.cve_clave};;
    type: left_outer
  }

  join: dim_cliente_solicitante {
    view_label: "Cliente Solicita"
    relationship: many_to_one
    sql_on:  ${seguimiento_pedido_entrega.solicitante} = ${dim_cliente_solicitante.cve_clave};;
    type: left_outer
  }

  join: cat_motivo_are {
    view_label: "Motivo Are"
    relationship: many_to_one
    sql_on:  ${seguimiento_pedido_entrega.cve_motivo_are}  = ${cat_motivo_are.cve_motivo_are};;
    type: left_outer
  }


  join: cat_motivo_pedido {
    view_label: "Motivo Pedido"
    relationship: many_to_one
    sql_on:  ${seguimiento_pedido_entrega.cve_motivo_pedido}  = ${cat_motivo_pedido.cve_motivo_pedido};;
    type: left_outer
  }

  join: cat_motivo_rechazo_pedido {
    view_label: "Motivo Rechazo"
    relationship: many_to_one
    sql_on:  ${seguimiento_pedido_entrega.cve_motivo_rechazo}  = ${cat_motivo_rechazo_pedido.cve_motivo_rechazo};;
    type: left_outer
  }



}
