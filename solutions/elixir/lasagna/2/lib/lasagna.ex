defmodule Lasagna do
  def expected_minutes_in_oven() do
    expected_minutes_in_oven = 40
  end
  def remaining_minutes_in_oven(x) do
    remaining_minutes_in_oven = 40 - x
  end
  def preparation_time_in_minutes(y) do
    preparation_time_in_minutes = y*2
  end
  def total_time_in_minutes(l,m) do
    total_time_in_minutes = Lasagna.preparation_time_in_minutes(l) + m
  end
  def alarm() do
    alarm = "Ding!"
  end
end
