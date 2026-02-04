# Overview
Graderl is a small console-based application written in Erlang that processes records  and produces summary statistics. The goal of this project was to practice core Erlang concepts such as pattern matching, recursion, guards, and functional list processing.

The application works over a predefined dataset, computing averages, minimum and maximum values, and overall results. Each record is evaluated against a simple numeric rule to determine its final status, and all information is displayed in the terminal using formatted output.

[Software Demo Video](https://youtu.be/XoEUQpS7xdc)

# Development Environment
Developed using the Erlang/OTP environment and executed from the Erlang shell. The application is divided into small modules to separate data definition, computation logic, and execution flow.

Written entirely in Erlang and based solely on the standard library, mainly using lists and io for data processing and terminal output.

# Useful Websites

[Erlang Official Documentation](https://www.erlang.org/doc/readme.html)
[Erlang YT Crash course](https://www.youtube.com/watch?v=HRrfc9CiR_s&list=PLdOYTlKwc71ljrfUqrKYoULxRjqI0p8it)

# Future Work

Load input data from an external file
Add configurable evaluation rules
Improve validation and error handling
Export computed results to a file