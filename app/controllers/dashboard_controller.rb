class DashboardController < ApplicationController
  def index
    @sales_group_by_month = Sale.group_by_month(:date_time, last: 12).order(date_time: :asc).sum(:price)
    @sales_group_by_month_count = Sale.group_by_month(:date_time, last: 12).order(date_time: :asc).count
    @sales_group_by_month_prom = Sale.group_by_month(:date_time, last: 12).order(date_time: :asc).average(:price)
    
    @sales_pie_12 = Sale.group_origin(12)
    @sales_pie_6 = Sale.group_origin(6)
    @sales_pie_3 = Sale.group_origin(3)
    @sales_pie_1 = Sale.group_origin(1)

    @sales_pie_12m = Sale.group_mix(12)
    @sales_pie_6m = Sale.group_mix(6)
    @sales_pie_3m = Sale.group_mix(3)
    @sales_pie_1m = Sale.group_mix(1)
  end
end
