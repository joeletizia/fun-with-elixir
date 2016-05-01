defmodule MyEnum do
  def all?([], _), do: true
  def all?([head|tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _), do: []
  def each([head|tail], func) do 
    func.(head)
    each(tail, func)
  end

  def filter([], _), do: []
  def filter([head|tail], func) do
    if func.(head) do
      [head] ++ filter(tail, func)
    else
      filter(tail, func)
    end
  end

  def take([], _), do: []
  def take(_, 0), do: []
  def take([head|tail], n) do
    [head] ++ take(tail, n-1)
  end

  def drop([], _), do: []
  def drop(list, 0), do: list
  def drop([_|tail], n) do
    drop(tail, n-1)
  end

  def split([], _, _), do: []
  def split(list, group_size) do
      [take(list, group_size)] ++ split(drop(list, group_size), group_size)
  end

  def flatten([]), do: []
  def flatten([head|tail]) when is_list(head) do
    flatten(head) ++ flatten(tail)
  end
  def flatten([head|tail]) do
    [head] ++ flatten(tail)
  end
end

