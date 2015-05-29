%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc mochi.

-module(mochi).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the mochi server.
start() ->
    mochi_deps:ensure(),
    ensure_started(crypto),
    application:start(mochi).


%% @spec stop() -> ok
%% @doc Stop the mochi server.
stop() ->
    application:stop(mochi).
