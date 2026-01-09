result =
  1..121_000
  |> Enum.filter(&(rem(&1, 2) != 0))
  |> Enum.map(&(&1 * &1))
  |> Enum.sum()

IO.puts("out: #{result}")
