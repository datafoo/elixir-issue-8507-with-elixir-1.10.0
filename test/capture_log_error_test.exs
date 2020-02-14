require Logger

Application.put_env(:logger, :console, metadata: :all)

defmodule Myapp.CaptureLogErrorTest do
  use ExUnit.Case

  test "boom!" do
    Logger.metadata(boom: <<1::1>>)
    Logger.info("boom!")
  end
end
