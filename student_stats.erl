-module(student_stats).
-export([
    student_average/1,
    course_average/1,
    highest_average/1,
    lowest_average/1,
    highest_grade/1,
    lowest_grade/1,
    classification/1,
    round2/1
]).

%% Average
student_average({_Name, Grades}) ->
    round2(sum(Grades) / length(Grades)).

sum([]) -> 0;
sum([H | T]) -> H + sum(T).

%% Course average
course_average(Students) ->
    Averages = lists:map(fun student_average/1, Students),
    round2(
        lists:foldl(fun(X, Acc) -> X + Acc end, 0, Averages)
        / length(Averages)
    ).

%% Highest / lowest average
highest_average(Students) ->
    Averages = lists:map(fun student_average/1, Students),
    case Averages of
        [] -> 0;
        _ -> lists:max(Averages)
    end.

lowest_average(Students) ->
    Averages = lists:map(fun student_average/1, Students),
    case Averages of
        [] -> 0;
        _ -> lists:min(Averages)
    end.

%% Guards
valid_grade(G) when G >= 0, G =< 10 -> true;
valid_grade(_) -> false.

%% Helpers
all_grades(Students) ->
    lists:foldl(
        fun({_Name, Grades}, Acc) -> Grades ++ Acc end,
        [],
        Students
    ).

highest_grade(Students) ->
    Grades = lists:filter(fun valid_grade/1, all_grades(Students)),
    lists:max(Grades).

lowest_grade(Students) ->
    Grades = lists:filter(fun valid_grade/1, all_grades(Students)),
    lists:min(Grades).

%% Classification
classification(Average) when Average >= 6 ->
    aprobado;
classification(Average) when Average < 6 ->
    reprobado.

round2(Value) ->
    round(Value * 100) / 100.
