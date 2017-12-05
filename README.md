# Prime Tables

Write an application that takes numeric input (N) from a user and outputs a multiplication table of (N) prime numbers.

## About

Built with Ruby 2.4.0

Assumes Ruby (https://www.ruby-lang.org/en/downloads/) and Bundler are already installed on your machine


## How to Install

Start by opening Terminal or your preferred command line interface

Clone on to your local machine and change into that directory

```sh
$ git clone git@github.com:alexanders89/prime_tables.git
$ cd prime_tables
```

If you don't have the Bundler Gem installed run the following before running bundle, skip this step if you already have it

```sh
$ gem install bundler
```

Run bundle to install the required dependancies

```sh
$ bundle
```

## How to Run

Change into the prime_tables if you aren't already

The standard output will be a table of the first 10 prime numbers and is achieved by running the prime_tables file.

This will give the following output

```sh
$ ruby prime_tables.rb

Multiplication table of first 10 prime numbers
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
```

If you would like to generate a table with a custom number of primes, run the same file with a number following the file name.

```sh
$ ruby prime_tables.rb 5

Multiplication table of first 5 prime numbers
+----+----+----+----+----+-----+
|    | 2  | 3  | 5  | 7  | 11  |
| 2  | 4  | 6  | 10 | 14 | 22  |
| 3  | 6  | 9  | 15 | 21 | 33  |
| 5  | 10 | 15 | 25 | 35 | 55  |
| 7  | 14 | 21 | 35 | 49 | 77  |
| 11 | 22 | 33 | 55 | 77 | 121 |
+----+----+----+----+----+-----+

```
The program is capable of generating large numbers of primes, however anything over 30,000 will lead to a few seconds delay.

## Running the tests

Change into the directory and run Rspec

```sh
$ rspec

Prime
  validator
    will only test positive integers
    will return false when given a non prime number
    will return true when given a prime number
  list
    will generate the first 10 primes
    will generate a user specified number of primes
    can generate large numbers of primes

Table
  will only function with integers
  can create a multiplication array of arrays

Finished in 2.42 seconds (files took 0.19871 seconds to load)
8 examples, 0 failures


COVERAGE:  96.88% -- 62/64 lines in 4 files

+----------+--------------+-------+--------+---------+
| coverage | file         | lines | missed | missing |
+----------+--------------+-------+--------+---------+
|  84.62%  | lib/table.rb | 13    | 2      | 17-18   |
+----------+--------------+-------+--------+---------+

```

## What am I pleased with

I was pleased with my solution to generating primes as I think it's very efficient. The most memory intensive calculations are not found until the end of the valid method so most numbers will return false based on very simple calculations. Ending in 2 for example. This is a very quick way to eliminate a large amount of non primes.
As a result it can generate a large amount of primes with what I think is a very simple syntax, which is then output in an array for easy manipulation.

I was also pleased with the method to turn an array of integers into an array of arrays of multipliers. This could easily by adapted to run my own table building class as it already accounts for the extra blank space on the first row.

## What would I Change

If I had more time I would have liked to build my own tool for constructing the table instead of using a gem.
Specifically I would want the table to adjust each cell based on the largest number it has so they cell can still be readable.
This also affected my test coverage, normally I would aim for 98% plus coverage but the output of the table gem made it difficult to test for.

## Tech Used

Ruby
Rspec
Terminal Table (https://github.com/tj/terminal-table)
Bundler
Simplecov (https://github.com/colszowka/simplecov)
