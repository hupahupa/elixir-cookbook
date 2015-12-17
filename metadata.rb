name             "elixir"
maintainer       "Jamie Winsor"
maintainer_email "jamie@vialstudios.com"
license          "Apache 2.0"
description      "Manages an Elixir installation"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.11.0"

depends "apt", "~> 2.7"
depends "git"
depends "github"
depends "erlang"
depends "libarchive"

grouping "elixir",
  title: "Elixir"
attribute "elixir/install_method",
  default: "package",
  required: "required",
  choice: [
    "source",
    "package",
  ],
  recipes: [
    "elixir::default",
  ]
attribute "elixir/version",
  default: "1.0.5",
  required: "required",
  recipes: [
    "elixir::default",
    "elixir::_source",
    "elixir::_package",
  ]
attribute "elixir/install_path",
  default: "/usr/local/lib/elixir",
  required: "required",
  recipes: [
    "elixir::default",
    "elixir::_source",
    "elixir::_package",
  ]

grouping "elixir/source",
  title: "Elixir Source"
attribute "elixir/source/repo",
  default: "https://github.com/elixir-lang/elixir.git",
  required: "required",
  recipes: [
    "elixir::_source",
  ]
