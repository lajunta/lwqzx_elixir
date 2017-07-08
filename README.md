# Lwqzx

**TODO: Some Actions For Lwqzx**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `lwqzx` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:lwqzx, "~> 0.0.1"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/lwqzx](https://hexdocs.pm/lwqzx).

## Usage

Just do it in your program

Lwqzx.auth(login,passwd)

if authed, it will return [login: login, uname: realname,groups: [..]]
if not authed, it just return []
