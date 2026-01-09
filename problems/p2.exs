result =
  Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
  |> Stream.take_while(&(&1 < 4_000_000))
  |> Stream.filter(&(rem(&1, 2) == 0))
  |> Enum.sum()

IO.puts("out: #{result}")
