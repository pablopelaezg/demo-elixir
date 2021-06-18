defmodule Subjectgrades.MixProject do
  use Mix.Project

  def project do
    [
      app: :subjectgrades,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SubjectGrades.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [ 
      {:plug_cowboy, "~> 2.0"},
      {:ecto_sql, "~> 3.2"},
      {:postgrex, "~> 0.15"},
      {:poison, "~> 3.1"}
    ]
  end
end
