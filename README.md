# Prime Tables

Write an application that takes numeric input (N) from a user and outputs a multiplication table of (N) prime numbers.

## About

Built with Ruby 2.4.0

Assumes Ruby (https://www.ruby-lang.org/en/downloads/) and Bundler are already installed on your machine


## How to Install

Start by opening Terminal of your preferred command line interface

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

## What am I pleased with

I was pleased with my solution to generating primes as I think it's very efficient. The most memory intensive calculations are not found until the end of the valid method so most numbers will return false based on very simple calculations. Ending in 2 for example. This is a very quick way to eliminate a large amount of non primes.

## What would I Change

If I had more time I would have liked to build my own tools for constructing the table instead of using a gem.
Specifically I would want the table to adjust each cell based on the largest number it has so they cell can still be readable.
