defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    daily_rate = hourly_rate * 8.0
  end
  def apply_discount(before_discount, discount) do
    apply_discount = before_discount * (1.0 - discount/100)
  end
  def monthly_rate(hourly_rate, discount) do
    before_discount = FreelancerRates.daily_rate(hourly_rate)
    monthly_rate = trunc(ceil(22 * FreelancerRates.apply_discount(before_discount, discount)))
  end
  def days_in_budget(budget, hourly_rate, discount) do
    days_in_budget = Float.floor(budget/FreelancerRates.apply_discount(FreelancerRates.daily_rate(hourly_rate), discount),1)
  end
end
