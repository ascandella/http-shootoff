%% @author Mochi Media <dev@mochimedia.com>
%% @copyright mochi Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the mochi application.

-module(mochi_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for mochi.
start(_Type, _StartArgs) ->
    mochi_deps:ensure(),
    mochi_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for mochi.
stop(_State) ->
    ok.
