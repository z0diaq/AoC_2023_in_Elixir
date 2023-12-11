defmodule Part1Test do
  use ExUnit.Case

  test "verify code on sample data" do
    sum = FileUtils.read_lines("day01/part1/test/sample.txt")
      |> Enum.map(&(StringUtils.find_first_and_list_digit_and_return_number(&1)))
      |> Enum.sum
    assert sum == 142
  end
  test "verify code on input data" do
    sum = FileUtils.read_lines("day01/part1/test/input.txt")
      |> Enum.map(&(StringUtils.find_first_and_list_digit_and_return_number(&1)))
      |> Enum.sum
    IO.puts("result is " <> Integer.to_string(sum))
  end
end
