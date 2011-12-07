-module(example).
-export([do_stuff/2]).
%%% ==============================================================
%%%     BASIC INFORMATION
%%% ==============================================================
%%%
%%% Description:
%%% This is an example module that wants to be documented.


%-----------------------------------------------------------------
% Function:        do_stuff/2 -> true | false
%
% Documentation:   Does some stuff with arguments and return result
%-----------------------------------------------------------------
do_stuff(Thing, Stuff) ->
    true.
