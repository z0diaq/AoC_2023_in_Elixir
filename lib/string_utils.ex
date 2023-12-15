defmodule StringUtils do

  @digits %{"1" => 1, "one" => 1, "2" => 2, "two" => 2, "3" => 3, "three" => 3, "4" => 4, "four" => 4, "5" => 5, "five" => 5, "6" => 6, "six" => 6, "7" => 7, "seven" => 7, "8" => 8, "eight" => 8, "9" => 9, "nine" => 9}

  def find_first_and_list_digit_and_return_number(string) do
    graphemes = String.graphemes(string)
    digits = Enum.filter(graphemes, fn char -> String.match?(char, ~r/[0-9]/) end)
    IO.puts(string <> " => " <> List.to_string(digits))
    String.to_integer(List.first(digits)) * 10 + String.to_integer(List.last(digits))
  end

  def find_first_positions(text) do
    Enum.map(@digits, fn {digit_text,digit_value} ->
      case :binary.match(text, digit_text) do
        {index, _} -> {index,digit_value}
        :nomatch -> {nil,digit_value}
      end
    end)
   end

   def find_last_positions(text) do
    reversed_text = String.reverse(text)
    length = String.length(text)
    Enum.map(@digits, fn {digit_text,digit_value} ->
      reversed_digit_text = String.reverse(digit_text)
      case :binary.match(reversed_text, reversed_digit_text) do
        {index, _} -> {length - index - 1, digit_value}
        :nomatch -> {nil,digit_value}
      end
    end)
   end

  def find_first_digit(text) do
    positions = find_first_positions(text)

    min_index = Enum.reduce(positions,nil, fn {index,_value}, acc ->
      case index != nil and (acc == nil or index < acc) do
        true -> index
        false -> acc
      end
    end)

    Enum.reduce(positions,min_index, fn {index,value}, acc ->
      case min_index == index do
        true -> value
        false -> acc
      end
    end)
  end

  def find_last_digit(text) do
    positions = find_last_positions(text)

    min_index = Enum.reduce(positions,nil, fn {index,_value}, acc ->
      case index != nil and (acc == nil or index > acc) do
        true -> index
        false -> acc
      end
    end)

    Enum.reduce(positions,min_index, fn {index,value}, acc ->
      case min_index == index do
        true -> value
        false -> acc
      end
    end)
  end

  def find_real_digits(text) do
    number = find_first_digit(text) * 10 + find_last_digit(text)
    IO.puts(text <> " => " <> Integer.to_string(number))
    number
  end
end
