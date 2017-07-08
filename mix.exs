defmodule Lwqzx.Mixfile do
  use Mix.Project

  def project do
    [app: :lwqzx,
     version: "0.0.1",
     elixir: "~> 1.4.5",
     description: description(),
     package: package(),
     name: "Lwqzx",
     source_url: "https://github.com/lajunta/lwqzx_elixir",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  defp description do
    """
    Some action for elixir apps using lwqzx resources
    """
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [
      applications: [:httpoison,:iconv],
      extra_applications: [:logger]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:httpoison, "~> 0.12.0"},
      {:iconv, "~> 1.0.5"},
      {:floki, "~> 0.17.2"},
      {:poison, "~> 3.1"}
    ]
  end

  defp package do 
    [
      name: :lwqzx,
      files: ["lib","mix.exs","README.*","LICENSE*"],
      maintainers: ["zxy"],
      licenses: ["Appache 2.0"],
      links: %{"Github" => "https://github.com/lajunta/lwqzx_elixir"}
    ]
  end
end
