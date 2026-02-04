-module(student_app).
-export([run/0]).

run() ->
    Students = student_data:students(),

    io:format("~n--- Student Graderl ---~n", []),

    lists:map(fun print_student/1, Students),

    io:format("~nCourse average: ~p~n",
        [student_stats:course_average(Students)]),

    io:format("Highest average: ~p~n",
        [student_stats:highest_average(Students)]),

    io:format("Lowest average: ~p~n",
        [student_stats:lowest_average(Students)]),

    io:format("Highest grade: ~p~n",
        [student_stats:highest_grade(Students)]),

    io:format("Lowest grade: ~p~n",
        [student_stats:lowest_grade(Students)]).

print_student(Student = {Name, Grades}) ->
    Avg = student_stats:student_average(Student),
    Status = student_stats:classification(Avg),
    io:format(
        "Student: ~s | Grades: ~w | Average: ~p | Status: ~p~n",
        [Name, Grades, Avg, Status]
    ).
