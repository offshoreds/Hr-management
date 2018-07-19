connection: "hrm"

label: "HR Management"

# include all the views
include: "*.view"

#include: "employee_expenses.dashboard"

#include: "Recruitment.dashboard"

#include: "workforce_effectiveness.dashboard"

#include: "hr_overview.dashboard"

explore: headcount {}

explore: supervisorreport {
  label: "Supervisor"
}

explore: employees_trend {}

explore: payroll {}

explore: requisition_events {}

explore: recruitment_events {}

explore: new_hire_trend {}

explore: open_requisition {}

explore: top5_vacancies {}

explore: recruitment_stage {}

explore: vacancy_fill_rate {}

explore: vacancy_rate {}

explore: new_hire_retention {}

explore: new_hire_source {}

explore: new_hire_view {}

explore: threeyears_saltrend {}

explore: salary_compression {}

explore: performance_base {}

explore: top_cost_centers {}

explore: total_expenses_trend {}

explore: top_business_unit {}

explore: expenses_category {}

explore: top_spenders {}

explore: expenses_by_time_period {}

explore: recent_emp {}

explore: expenses_by_day {}
