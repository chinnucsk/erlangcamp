%%% @author Cedric Meury
%%% @doc list tests
%%% @copyright 2013 Cedric-Meury.ch

-module(ec_lists).
-export([print_each/1]).
-export([twomult/1]).

print_each(L) ->
	print_each(L, 1).

print_each([A|B], Nr) ->
	io:format("~p is ~p~n", [Nr, A]),
	print_each(B, Nr+1);
print_each(X, _Nr) when length(X) == 0 ->
	ok.

twomult(L) ->
  lists:map(fun(A) -> A*2 end, L).
