defmodule Lwqzx do
  @moduledoc """
  Documentation for Lwqzx.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Lwqzx.hello
      :world

  """
  def hello do
    :world
  end

  def cn(str) do
    :iconv.convert("gb2312","utf-8",str)
  end

  def myhead(h) do
    cookie = h 
      |> Enum.filter(fn(s) -> elem(s,0) == "Set-Cookie" end)
      |> hd
      |> elem(1)
    [{"Cookie",cookie}]
  end

  def auth(login \\ "zxy",passwd \\"at37f0de") do
    lurl = "http://www.lwqzx.sdedu.net/kernel/net_school/active_app/login1.php"
    bod = {:form,[{"login_user_m_",login},{"login_password",passwd}]}
    HTTPoison.start
    {_,res} = HTTPoison.post lurl,bod, [follow_redirect: true, max_direct: 2]
    hders = myhead(res.headers)
    {_,res} = HTTPoison.get lurl,hders
    doc = cn(res.body)
    uname = Floki.find(doc,"span.tt1 a:nth-child(1)") |> Floki.text

    case uname do
      "" -> []
      _ -> 
        groups = doc
          |> Floki.find("span.tt1 a:nth-child(5)") 
          |> Floki.attribute("title")
          |> hd
          |> String.replace("[","")
          |> String.replace("]","")
          |> String.split("@")
          |> List.delete("")
        [login: login, uname: uname, groups: groups]
    end
  end
end
