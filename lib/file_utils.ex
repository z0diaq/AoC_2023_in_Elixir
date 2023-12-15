defmodule FileUtils do
  def read_lines(filename) do
    # __DIR__ point to current binary location - in our case this is path to /lib directory
    Path.join(__DIR__, "../" <> filename)
    |> File.stream!()
    |> Enum.map(&String.trim/1)
    |> Enum.to_list()
  end
end
