# ProtocolCompilationIssue

https://github.com/elixir-lang/elixir/issues/15133

## used elixir version

```shell
❯ elixir --version
Erlang/OTP 28 [erts-16.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1]

Elixir 1.19.5 (compiled with Erlang/OTP 28)
```

## clean build
```shell
mix deps --clean
```

This is to have something to compile.

## Compile in parallel

Open 3 shells or call same command 3 times: `mix compile`

### Shell 1

```shell
❯ mix compile
==> file_system
Compiling 7 files (.ex)
Generated file_system app
==> mime
Compiling 1 file (.ex)
Generated mime app
==> jason
Compiling 10 files (.ex)
Generated jason app
==> esbuild
Compiling 4 files (.ex)
Generated esbuild app
==> plug_crypto
Compiling 5 files (.ex)
Generated plug_crypto app
==> hpax
Compiling 4 files (.ex)
Generated hpax app
==> phx_new
Compiling 11 files (.ex)
Generated phx_new app
===> Analyzing applications...
===> Compiling telemetry
==> telemetry_metrics
Compiling 7 files (.ex)
Generated telemetry_metrics app
===> Analyzing applications...
===> Compiling telemetry_poller
==> thousand_island
Compiling 18 files (.ex)
Generated thousand_island app
==> phoenix_html
Compiling 6 files (.ex)
Generated phoenix_html app
==> phoenix_template
Compiling 4 files (.ex)
Generated phoenix_template app
==> expo
Compiling 2 files (.erl)
Compiling 22 files (.ex)
Generated expo app
==> gettext
Compiling 18 files (.ex)
Generated gettext app
==> phoenix_pubsub
Compiling 12 files (.ex)
Generated phoenix_pubsub app
==> dns_cluster
Compiling 1 file (.ex)
Generated dns_cluster app
==> plug
Compiling 1 file (.erl)
Compiling 42 files (.ex)
Generated plug app
==> tailwind
Compiling 3 files (.ex)
Generated tailwind app
==> websock
Compiling 1 file (.ex)
Generated websock app
==> bandit
Compiling 54 files (.ex)
Generated bandit app
==> websock_adapter
Compiling 4 files (.ex)
Generated websock_adapter app
==> phoenix
Compiling 74 files (.ex)
Generated phoenix app
==> phoenix_live_reload
Compiling 5 files (.ex)
Generated phoenix_live_reload app
==> phoenix_live_view
Compiling 49 files (.ex)
Generated phoenix_live_view app
==> phoenix_live_dashboard
Compiling 36 files (.ex)
Generated phoenix_live_dashboard app
==> core
Waiting for lock on the build directory (held by process 19155)
Compiling 2 files (.ex)
Generated core app
==> web
Waiting for lock on the build directory (held by process 19227)
Compiling 13 files (.ex)
Generated web app

16:28:57.379 [error] Task #PID<0.3381.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.Phoenix.HTML.FormData.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []
** (EXIT from #PID<0.95.0>) an exception was raised:
    ** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.Phoenix.HTML.FormData.beam": no such file or directory
        (elixir 1.19.5) lib/file.ex:1407: File.write!/3
        (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
        (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
        (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4


16:28:57.393 [error] Task #PID<0.3388.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.Collectable.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []

16:28:57.393 [error] Task #PID<0.3378.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.Phoenix.Param.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []

16:28:57.393 [error] Task #PID<0.3382.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.Bandit.WebSocket.Frame.Serializable.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []

16:28:57.393 [error] Task #PID<0.3392.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.List.Chars.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []

16:28:57.382 [error] Task #PID<0.3379.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.Plug.Exception.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []

16:28:57.401 [error] Task #PID<0.3387.0> started from #PID<0.95.0> terminating
** (File.Error) could not write to file "/home/muej/public_git/elixir/protocol_compilation_issue/_build/dev/consolidated/Elixir.String.Chars.beam": no such file or directory
    (elixir 1.19.5) lib/file.ex:1407: File.write!/3
    (mix 1.19.5) lib/mix/compilers/protocol.ex:164: Mix.Compilers.Protocol.consolidate_each/4
    (elixir 1.19.5) lib/task/supervised.ex:105: Task.Supervised.invoke_mfa/2
    (elixir 1.19.5) lib/task/supervised.ex:40: Task.Supervised.reply/4
Function: #Function<8.119457958/0 in Mix.Compilers.Protocol.consolidate/4>
    Args: []
```

This shell failed in this run. During my tests it was random which of the 3 got the error.

### Shell 2

```shell
❯ mix compile
Waiting for lock on the build directory (held by process 19082)
==> core
Waiting for lock on the build directory (held by process 19082)
Waiting for lock on the build directory (held by process 19227)
Waiting for lock on the build directory (held by process 19082)
Waiting for lock on the build directory (held by process 19227)
==> web
Waiting for lock on the build directory (held by process 19227)
```

### Shell 3
```shell
❯ mix compile
Waiting for lock on the build directory (held by process 19082)
Waiting for lock on the build directory (held by process 19155)
Waiting for lock on the build directory (held by process 19082)
==> core
Waiting for lock on the build directory (held by process 19082)
==> web
Waiting for lock on the build directory (held by process 19155)
```

