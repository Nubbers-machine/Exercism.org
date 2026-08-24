defmodule Secrets do
  def secret_add(secret) do
    secret_add =  &(&1 + secret)
  end

  def secret_subtract(secret) do
    secret_subtract =  &(&1 - secret)
  end

  def secret_multiply(secret) do
    secret_multiply =  &(&1 * secret)
  end

  def secret_divide(secret) do
    secret_divide = &div(&1,secret)
  end

  def secret_and(secret) do
    secret_and = &Bitwise.band(&1,secret)
  end

  def secret_xor(secret) do
    secret_xor = &Bitwise.bxor(&1,secret)
  end

  def secret_combine(secret_function1, secret_function2) do
    fn param ->
      param
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end
