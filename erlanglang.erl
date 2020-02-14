-module(erlanglang).
-export([start/0]).

start() ->
   io:fwrite("Hello from Erlang!\n"),
   io:fwrite("Goodbye from Erlang!\n").
