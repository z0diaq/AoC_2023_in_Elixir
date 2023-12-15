defmodule StringUitlsTest do
  use ExUnit.Case

  test "string test - find first three" do
    first_digit = StringUtils.find_first_digit("abcthree1")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 3
  end

  test "string test - find first one" do
    first_digit = StringUtils.find_first_digit("abc1three")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 1
  end

  test "string test - find first 4" do
    first_digit = StringUtils.find_first_digit("threfiv4")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 4
  end

  test "string test - find first nine" do
    first_digit = StringUtils.find_first_digit("nine")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 9
  end

  test "string test - find last 1" do
    first_digit = StringUtils.find_last_digit("abcthree1")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 1
  end

  test "string test - find last three" do
    first_digit = StringUtils.find_last_digit("abc1three")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 3
  end

  test "string test - find last 4" do
    first_digit = StringUtils.find_last_digit("threefive4")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 4
  end

  test "string test - find last nine" do
    first_digit = StringUtils.find_last_digit("123nine")
    IO.puts("first digit is " <> Integer.to_string(first_digit))
    assert first_digit == 9
  end

end
