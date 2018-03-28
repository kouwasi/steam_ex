defmodule SteamEx.Mixfile do
  use Mix.Project

  def project do
    [
      app: :steam_ex,
      version: "0.2.0-alpha",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "SteamEx",
      source_url: "https://github.com/kouwasi/steam_ex"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0"},
      {:ex_doc, "~> 0.18.3", only: :dev, runtime: false},
      {:earmark, "~> 1.2", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Elixir wrapper for the Steam Web API"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "steam_ex",
      # These are the default files included in the package
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["kouwasi"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/kouwasi/steam_ex"}
    ]
  end
end
