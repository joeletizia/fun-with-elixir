defmodule ListManipulation do
  def reverse([]) do
    []
  end

  def reverse(list) do
    reverse(tl(list)) ++ [hd(list)]
  end
end

defmodule Math do
  def double(n) do
    n * 2
  end

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    n
    |> double
    |> double
  end

  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    n * factorial(n-1)
  end
  def factorial(n) when n < 0 do
    { :error, "Factorial of n < 0 is invalid" }
  end

  def sum(0), do: 0
  def sum(n) do
    n + sum(n - 1)
  end

  def gcd(x, 0), do: x
  def gcd(x,y) do
    gcd(y, rem(x,y))
  end
end

