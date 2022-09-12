connection: "bigquery_proyecto_maypo_prd"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: derived_seguimiento_pedido_entrega {
  label: "Sabana General"
  view_label: "Sabana"


}
