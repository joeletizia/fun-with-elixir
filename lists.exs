defmodule Lists do
  def len([]), do: 0
  def len([_|tail]), do: 1 + length(tail)

  def square([]), do: []
  def square([head | tail]) do
    [head*head | square(tail)]
  end

  def add_one([]), do: []
  def add_one([head |  tail]) do 
    [head + 1 | add_one(tail)]
  end

  def map([], _), do: []
  def map([head|tail], func) do
    [func.(head) | map(tail, func)]
  end

  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do 
    reduce(tail, func.(head), func)
  end
end
