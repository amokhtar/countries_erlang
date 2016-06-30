-module(iso_erlang_language_test).

-compile(export_all).

-include_lib("eunit/include/eunit.hrl").

is_alpha_2_true_test() ->
    ?assertEqual(true, iso_erlang:is_language_alpha_2(<<"FR">>)),
    ?assertEqual(true, iso_erlang:is_language_alpha_2(<<"EN">>)),
    ?assertEqual(true, iso_erlang:is_language_alpha_2(<<"en">>)),
    ?assertEqual(true, iso_erlang:is_language_alpha_2("En")),
    ?assertEqual(true, iso_erlang:is_language_alpha_2("fR")).

is_alpha_2_false_test() ->
    ?assertEqual(false, iso_erlang:is_language_alpha_2(<<"ENG">>)),
    ?assertEqual(false, iso_erlang:is_language_alpha_2(<<"xx">>)),
    ?assertEqual(false, iso_erlang:is_language_alpha_2("adfs")),
    ?assertEqual(false, iso_erlang:is_language_alpha_2("a")).

is_alpha_3_true_test() ->
    ?assertEqual(true, iso_erlang:is_language_alpha_3(<<"ENG">>)),
    ?assertEqual(true, iso_erlang:is_language_alpha_3(<<"DZO">>)),
    ?assertEqual(true, iso_erlang:is_language_alpha_3(<<"FAS">>)),
    ?assertEqual(true, iso_erlang:is_language_alpha_3("FRE")),
    ?assertEqual(true, iso_erlang:is_language_alpha_3("fra")),
    ?assertEqual(true, iso_erlang:is_language_alpha_3("ChV")).

is_alpha_3_false_test() ->
    ?assertEqual(false, iso_erlang:is_language_alpha_3(<<"EN">>)),
    ?assertEqual(false, iso_erlang:is_language_alpha_3(<<"en">>)),
    ?assertEqual(false, iso_erlang:is_language_alpha_3("asdfsdf")),
    ?assertEqual(false, iso_erlang:is_language_alpha_3("w")).

is_language_true_test() ->
    ?assertEqual(true, iso_erlang:is_language(<<"ENG">>)),
    ?assertEqual(true, iso_erlang:is_language(<<"DZO">>)),
    ?assertEqual(true, iso_erlang:is_language(<<"FAS">>)),
    ?assertEqual(true, iso_erlang:is_language("FRE")),
    ?assertEqual(true, iso_erlang:is_language("fra")),
    ?assertEqual(true, iso_erlang:is_language("ChV")),
    ?assertEqual(true, iso_erlang:is_language(<<"FR">>)),
    ?assertEqual(true, iso_erlang:is_language(<<"EN">>)),
    ?assertEqual(true, iso_erlang:is_language(<<"en">>)),
    ?assertEqual(true, iso_erlang:is_language("En")),
    ?assertEqual(true, iso_erlang:is_language("fR")).

is_country_false_test() ->
    ?assertEqual(false, iso_erlang:is_language(<<"EGGEGG">>)),
    ?assertEqual(false, iso_erlang:is_language(<<"">>)),
    ?assertEqual(false, iso_erlang:is_language("UadfsSs")).
%%---------------------------------------------------------------
%%
%%to_alpha_2_correct_test() ->
%%    ?assertEqual(<<"EG">>, iso_erlang:to_country_alpha_2(<<"EGY">>)),
%%    ?assertEqual(<<"US">>, iso_erlang:to_country_alpha_2(<<"USA">>)),
%%    ?assertEqual(<<"EG">>, iso_erlang:to_country_alpha_2("EGY")),
%%    ?assertEqual(<<"US">>, iso_erlang:to_country_alpha_2("USA")).
%%
%%to_alpha_2_already_correct_test() ->
%%    ?assertEqual(<<"EG">>, iso_erlang:to_country_alpha_2(<<"EG">>)),
%%    ?assertEqual(<<"US">>, iso_erlang:to_country_alpha_2(<<"US">>)),
%%    ?assertEqual(<<"EG">>, iso_erlang:to_country_alpha_2("EG")),
%%    ?assertEqual(<<"US">>, iso_erlang:to_country_alpha_2("US")).
%%
%%to_alpha_2_incorrect_test() ->
%%    ?assertError(_, iso_erlang:to_country_alpha_2(<<"EGR">>)),
%%    ?assertError(_, iso_erlang:to_country_alpha_2(<<"AAA">>)),
%%    ?assertError(_, iso_erlang:to_country_alpha_2("EGs")),
%%    ?assertError(_, iso_erlang:to_country_alpha_2("AAA")).
%%
%%to_alpha_3_correct_test() ->
%%    ?assertEqual(<<"EGY">>, iso_erlang:to_country_alpha_3(<<"EG">>)),
%%    ?assertEqual(<<"USA">>, iso_erlang:to_country_alpha_3(<<"US">>)),
%%    ?assertEqual(<<"EGY">>, iso_erlang:to_country_alpha_3("EG")),
%%    ?assertEqual(<<"USA">>, iso_erlang:to_country_alpha_3("US")).
%%
%%to_alpha_3_already_correct_test() ->
%%    ?assertEqual(<<"EGY">>, iso_erlang:to_country_alpha_3(<<"EGY">>)),
%%    ?assertEqual(<<"USA">>, iso_erlang:to_country_alpha_3(<<"USA">>)),
%%    ?assertEqual(<<"EGY">>, iso_erlang:to_country_alpha_3("EGY")),
%%    ?assertEqual(<<"USA">>, iso_erlang:to_country_alpha_3("USA")).
%%
%%to_alpha_3_incorrect_test() ->
%%    ?assertError(_, iso_erlang:to_country_alpha_3(<<"EGR">>)),
%%    ?assertError(_, iso_erlang:to_country_alpha_3(<<"AAA">>)),
%%    ?assertError(_, iso_erlang:to_country_alpha_3("EGs")),
%%    ?assertError(_, iso_erlang:to_country_alpha_3("AAA")).
%%
%%alpha_2_to_name_correct_test() ->
%%    ?assertEqual(<<"Egypt">>, iso_erlang:country_alpha_2_to_name(<<"EG">>)),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:country_alpha_2_to_name(<<"US">>)),
%%    ?assertEqual(<<"Egypt">>, iso_erlang:country_alpha_2_to_name("EG")),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:country_alpha_2_to_name("US")).
%%
%%alpha_2_to_name_incorrect_test() ->
%%    ?assertError(_, iso_erlang:country_alpha_2_to_name(<<"EGY">>)),
%%    ?assertError(_, iso_erlang:country_alpha_2_to_name(<<"USA">>)),
%%    ?assertError(_, iso_erlang:country_alpha_2_to_name("ABC")),
%%    ?assertError(_, iso_erlang:country_alpha_2_to_name("AAA")).
%%
%%alpha_3_to_name_correct_test() ->
%%    ?assertEqual(<<"Egypt">>, iso_erlang:country_alpha_3_to_name(<<"EGY">>)),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:country_alpha_3_to_name(<<"USA">>)),
%%    ?assertEqual(<<"Egypt">>, iso_erlang:country_alpha_3_to_name("EGY")),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:country_alpha_3_to_name("USA")).
%%
%%alpha_3_to_name_incorrect_test() ->
%%    ?assertError(_, iso_erlang:country_alpha_3_to_name(<<"EG">>)),
%%    ?assertError(_, iso_erlang:country_alpha_3_to_name(<<"US">>)),
%%    ?assertError(_, iso_erlang:country_alpha_3_to_name("ABA")),
%%    ?assertError(_, iso_erlang:country_alpha_3_to_name("AA")).
%%
%%to_country_name_correct_test() ->
%%    ?assertEqual(<<"Egypt">>, iso_erlang:to_country_name(<<"EGY">>)),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:to_country_name(<<"USA">>)),
%%    ?assertEqual(<<"Egypt">>, iso_erlang:to_country_name("EGY")),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:to_country_name("USA")),
%%    ?assertEqual(<<"Egypt">>, iso_erlang:to_country_name(<<"EG">>)),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:to_country_name(<<"US">>)),
%%    ?assertEqual(<<"Egypt">>, iso_erlang:to_country_name("EG")),
%%    ?assertEqual(<<"United States of America">>, iso_erlang:to_country_name("US")).
%%
%%to_country_name_incorrect_test() ->
%%    ?assertError(_, iso_erlang:to_country_name(<<"ABC">>)),
%%    ?assertError(_, iso_erlang:to_country_name(<<"AAA">>)),
%%    ?assertError(_, iso_erlang:to_country_name("ABC")),
%%    ?assertError(_, iso_erlang:to_country_name("AAA")).
%%
%%alpha_2_to_numerical_code_correct_test() ->
%%    ?assertEqual(818, iso_erlang:country_alpha_2_to_numerical_code(<<"EG">>)),
%%    ?assertEqual(840, iso_erlang:country_alpha_2_to_numerical_code(<<"US">>)),
%%    ?assertEqual(818, iso_erlang:country_alpha_2_to_numerical_code("EG")),
%%    ?assertEqual(840, iso_erlang:country_alpha_2_to_numerical_code("US")).
%%
%%alpha_2_to_numerical_code_incorrect_test() ->
%%    ?assertError(_, iso_erlang:country_alpha_2_to_numerical_code(<<"EGY">>)),
%%    ?assertError(_, iso_erlang:country_alpha_2_to_numerical_code(<<"USA">>)),
%%    ?assertError(_, iso_erlang:country_alpha_2_to_numerical_code("EGY")),
%%    ?assertError(_, iso_erlang:country_alpha_2_to_numerical_code("USA")).
%%
%%alpha_3_to_numerical_code_correct_test() ->
%%    ?assertEqual(818, iso_erlang:country_alpha_3_to_numerical_code(<<"EGY">>)),
%%    ?assertEqual(840, iso_erlang:country_alpha_3_to_numerical_code(<<"USA">>)),
%%    ?assertEqual(818, iso_erlang:country_alpha_3_to_numerical_code("EGY")),
%%    ?assertEqual(840, iso_erlang:country_alpha_3_to_numerical_code("USA")).
%%
%%alpha_3_to_numerical_code_incorrect_test() ->
%%    ?assertError(_, iso_erlang:country_alpha_3_to_numerical_code(<<"EG">>)),
%%    ?assertError(_, iso_erlang:country_alpha_3_to_numerical_code(<<"US">>)),
%%    ?assertError(_, iso_erlang:country_alpha_3_to_numerical_code("EG")),
%%    ?assertError(_, iso_erlang:country_alpha_3_to_numerical_code("US")).
%%
%%to_numerical_code_correct_test() ->
%%    ?assertEqual(818, iso_erlang:country_to_numerical_code(<<"EGY">>)),
%%    ?assertEqual(840, iso_erlang:country_to_numerical_code(<<"USA">>)),
%%    ?assertEqual(818, iso_erlang:country_to_numerical_code("EGY")),
%%    ?assertEqual(840, iso_erlang:country_to_numerical_code("USA")),
%%    ?assertEqual(818, iso_erlang:country_to_numerical_code(<<"EG">>)),
%%    ?assertEqual(840, iso_erlang:country_to_numerical_code(<<"US">>)),
%%    ?assertEqual(818, iso_erlang:country_to_numerical_code("EG")),
%%    ?assertEqual(840, iso_erlang:country_to_numerical_code("US")).
%%
%%to_numerical_code_incorrect_test() ->
%%    ?assertError(_, iso_erlang:country_to_numerical_code(<<"EsdG">>)),
%%    ?assertError(_, iso_erlang:country_to_numerical_code(<<"UsS">>)),
%%    ?assertError(_, iso_erlang:country_to_numerical_code("EGs")),
%%    ?assertError(_, iso_erlang:country_to_numerical_code("sUS")).
%%
%%normalize_test() ->
%%    ?assertEqual(<<"HELLO">>, iso_erlang:normalize(<<"Hello">>)),
%%    ?assertEqual(<<"HELLO">>, iso_erlang:normalize(<<"HeLlO">>)),
%%    ?assertEqual(<<"HELLO">>, iso_erlang:normalize("hello")),
%%    ?assertEqual(<<"HELLO">>, iso_erlang:normalize("HeLlO")).
%%
get_language_lists_test() ->
    ?assertEqual(184, length(iso_erlang:get_alpha_2_language_list())),
    ?assertEqual(488, length(iso_erlang:get_alpha_3_language_list())),
    ?assertEqual(565, length(iso_erlang:get_language_name_list())).