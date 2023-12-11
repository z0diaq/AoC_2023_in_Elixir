defmodule Day01 do
  use ExUnit.Case

  test "part 1 - verify code on sample data" do
    sum = FileUtils.read_lines("day01/part1_sample.txt")
      |> Enum.map(&(StringUtils.find_first_and_list_digit_and_return_number(&1)))
      |> Enum.sum
    assert sum == 142
  end
  test "part 1 - verify code on input data" do
    sum = FileUtils.read_lines("day01/part1_input.txt")
      |> Enum.map(&(StringUtils.find_first_and_list_digit_and_return_number(&1)))
      |> Enum.sum
    IO.puts("result is " <> Integer.to_string(sum))
  end
end
