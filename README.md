<!-- README.md is generated from README.Rmd. Please edit that file -->
phonenumber
===========

`phonenumber` is an R package that convert English letters to numbers or numbers to English letters as on a telephone keypad. The package consists of two functions:

1.  `letterToNumber` - converts letters in a string to numbers
2.  `numberToLetter` - converts numbers in a string to letters

Both functions convert non-alphanumeric characters to dash (-) and perform no conversion on their respective base character type (i.e., `letterToNumber` leaves letters as is and `numberToLetter` leaves numbers as is).

### Telephone keypad

For purposes of this package, the mapping of numbers to letters on a telephone's keypad are as follows:

-   2 corresponds to A, B, C
-   3 corresponds to D, E, F
-   4 corresponds to G, H, I
-   5 corresponds to J, K, L
-   6 corresponds to M, N, O
-   7 corresponds to P, Q, R, S
-   8 corresponds to T, U, V
-   9 corresponds to W, X, Y, Z
-   1 and 0 do not have corresponding letters

(I am aware that on some telephones, primarily older models, Q and Z are mapped to 0 rather than to 7 and 9.)

### Examples

#### `letterToNumber`

`letterToNumber` converts a string containing letters into the corresponding numbers on a telephone's keypad. For example, if the user wants to know what telephone number corresponds to "Texas:"

``` r
string <- "Texas"
letterToNumber(string)
#> [1] "83927"
```

### `numberToLetter`

`numberToLetter` converts a string containing numbers into the corresponding letters on a telephone's keypad. For example, if the user wants to know what possible character strings could be spelled by a sequence of numbers (e.g., 22):

``` r
string <- "22"
numberToLetter(string)
#> [1] "AA" "AB" "AC" "BA" "BB" "BC" "CA" "CB" "CC"
```
