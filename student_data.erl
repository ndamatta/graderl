-module(student_data).
-export([students/0]).

students() ->
    [
        {"Ana", [8, 9, 10]},
        {"Juan", [6, 7, 8]},
        {"Sofia", [9, 9, 10]},
        {"Pedro", [4, 6, 5]}
    ].
