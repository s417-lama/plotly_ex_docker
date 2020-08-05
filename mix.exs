defmodule PlotlyExDocker.MixProject do
  use Mix.Project

  def project do
    [
      app: :plotly_ex_docker,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      lockfile: Path.expand("mix.lock", __DIR__),
      deps_path: Path.expand("deps", __DIR__),
      build_path: Path.expand("_build", __DIR__),
      deps: deps(),
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
      {:plotly_ex, git: "https://github.com/s417-lama/plotly_ex.git"},
      {:statistics, "~> 0.6.1"},
    ]
  end
end
