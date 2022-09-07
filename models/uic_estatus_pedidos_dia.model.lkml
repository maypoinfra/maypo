connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: h_uic_estatus_pedido_al_dia {
  label: "Estatus Pedidos al Dia UIC"
  view_label: "Hechos-Estatus Pedido"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}})
                AND ${dim_material.tipo_material}='Z001';;

  join: dim_cliente_solicitante {
    view_label: "Cliente Solicita"
    relationship: many_to_one
    sql_on:  ${h_uic_estatus_pedido_al_dia.sr_cli_solicitante} = ${dim_cliente_solicitante.sr_cliente};;
    type: inner
  }

  join: dim_cliente_destina {
    view_label: "Cliente Destino"
    relationship: many_to_one
    sql_on: ${h_uic_estatus_pedido_al_dia.sr_cli_destina} = ${dim_cliente_destina.sr_cliente};;
    type:  inner
  }

  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${h_uic_estatus_pedido_al_dia.sr_material} = ${dim_material.sr_material};;
    type:  inner
  }

  join: dim_proveedor {
    view_label: "Proveedor"
    relationship: many_to_one
    sql_on: ${dim_proveedor.cve_proveedor} = ${dim_material.fabricante};;
    type:  left_outer
  }

}
