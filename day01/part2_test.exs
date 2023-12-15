defmodule Day01 do
  use ExUnit.Case

  test "part 2 - verify code on sample data" do
    sum = FileUtils.read_lines("day01/part2_sample.txt")
      |> Enum.map(&(StringUtils.find_real_digits(&1)))
      |> Enum.sum
    assert sum == 281
  end

  test "part 2 - verify code on input data" do
    sum = FileUtils.read_lines("day01/part2_input.txt")
      |> Enum.map(&(StringUtils.find_real_digits(&1)))
      |> Enum.sum
    IO.puts("result is " <> Integer.to_string(sum))
  end
end
