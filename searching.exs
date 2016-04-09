defmodule Searching do
  def binary_search(n, range, count \\ 0)
  def binary_search(n, (first..last), count) when last == n or first == n do
    { count, n }
  end
  def binary_search(n, (first..last), count) when n > last do
    { :error, "n > last. Don't do that" }
  end
  def binary_search(n, (first..last), count) when n < first do
    { :error, "n < first. Don't do that" }
  end
  def binary_search(n, (first..last), count) when n <= div(last - first, 2) + first do
    new_last = div(last - first, 2) + first
    binary_search(n, first..new_last, count + 1)
  end
  def binary_search(n, (first..last), count) when n > div(last - first, 2) + first do
    new_first = div(last - first, 2) + first
    binary_search(n, new_first..last, count + 1)
  end
end
