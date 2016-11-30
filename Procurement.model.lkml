connection: "look"

# include all views in this project
include: "*.view"

include: "Procurement_Analysis.dashboard"

explore: agreement_leakage {}

explore: purchase_by_supplier {}

explore: purchase_by_bu {}

explore: date_exception {}

explore: receipt_date {}

explore: return_trend {}

explore: returns_supplier {}

explore: variance_supplier {}
