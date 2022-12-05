connection: "bigquery_proyecto_maypo_prd"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: proyecto_maypo_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: proyecto_maypo_default_datagroup

explore: uic_inventarios_entradas_salidas {
  label: "Inventario Entradas y Salidas UIC"
  view_label: "Hechos-Inventario Entradas y Salidas"
  sql_always_where: ${dim_material.prov_reportes}  IN ({{ _user_attributes['user_prov_reporte']}})
    AND ${dim_material.tipo_material}='Z001';;

  join: dim_tiempo {
    view_label: "Tiempo"
    relationship: many_to_one
    sql_on:  ${uic_inventarios_entradas_salidas.cve_fecha}  = ${dim_tiempo.cve_fecha};;
    type: inner
  }

  join: dim_material {
    view_label: "Material"
    relationship: many_to_one
    sql_on: ${uic_inventarios_entradas_salidas.sr_material} = ${dim_material.sr_material};;
    type:  left_outer
  }

  join: dim_proveedor {
    view_label: "Proveedor"
    relationship: many_to_one
    #sql_on: ${dim_proveedor.cve_proveedor} = '0000'||${dim_material.prov_reportes};;
    sql_on: ${dim_proveedor.cve_proveedor} = ${dim_material.prov_reportes};;
    type:  left_outer
  }

  #join: dim_almacen {
  #  view_label: "Almacen"
  #  relationship: many_to_one
  #  sql_on: ${uic_inventarios_entradas_salidas.sr_almacen} = ${dim_almacen.sr_almacen};;
  #  type:  left_outer
  #}


}
