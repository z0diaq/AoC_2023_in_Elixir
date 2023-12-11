defmodule StringUtils do
  def find_first_and_list_digit_and_return_number(string) do
    graphemes = String.graphemes(string)
    digits = Enum.filter(graphemes, fn char -> String.match?(char, ~r/[0-9]/) end)
    IO.puts(string <> " => " <> List.to_string(digits))
    String.to_integer(List.first(digits)) * 10 + String.to_integer(List.last(digits))
  end
end
