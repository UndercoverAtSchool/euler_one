result =
  Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
  |> Stream.take_while(fn n -> n < 4_000_000 end)
  |> Stream.filter(fn n -> rem(n, 2) == 0 end)
  |> Enum.sum()

IO.puts("out: #{result}")
