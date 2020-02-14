-module(erlanglang).

-export([start/0]).

start() ->
    io:fwrite("Hello from Erlang!\n"),
    my_exec("julia julia.jl"),
    io:fwrite("Goodbye from Erlang!\n").

my_exec(Command) ->
    Port = open_port({spawn, Command},
		     [stream, eof, hide, exit_status]),
    get_data(Port, []).

get_data(Port, Sofar) ->
    receive
      {Port, {data, Bytes}} ->
	  io:fwrite(Bytes), get_data(Port, [Sofar | Bytes]);
      {Port, eof} ->
	  Port ! {self(), close},
	  receive {Port, closed} -> true end,
	  ExitCode = receive
		       {Port, {exit_status, Code}} -> Code
		     end,
	  {ExitCode, lists:flatten(Sofar)}
    end.
