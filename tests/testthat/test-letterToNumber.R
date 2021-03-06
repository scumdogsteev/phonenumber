library(phonenumber)
context("letterToNumber")

test_that("letterToNumber returns the correct numbers", {
    expect_equal(letterToNumber("a"), "2")
    expect_equal(letterToNumber("b"), "2")
    expect_equal(letterToNumber("c"), "2")
    expect_equal(letterToNumber("d"), "3")
    expect_equal(letterToNumber("e"), "3")
    expect_equal(letterToNumber("f"), "3")
    expect_equal(letterToNumber("g"), "4")
    expect_equal(letterToNumber("h"), "4")
    expect_equal(letterToNumber("i"), "4")
    expect_equal(letterToNumber("j"), "5")
    expect_equal(letterToNumber("k"), "5")
    expect_equal(letterToNumber("l"), "5")
    expect_equal(letterToNumber("m"), "6")
    expect_equal(letterToNumber("n"), "6")
    expect_equal(letterToNumber("o"), "6")
    expect_equal(letterToNumber("p"), "7")
    expect_equal(letterToNumber("q"), "7")
    expect_equal(letterToNumber("q", qz = 0), "0")
    expect_equal(letterToNumber("r"), "7")
    expect_equal(letterToNumber("s"), "7")
    expect_equal(letterToNumber("t"), "8")
    expect_equal(letterToNumber("u"), "8")
    expect_equal(letterToNumber("v"), "8")
    expect_equal(letterToNumber("w"), "9")
    expect_equal(letterToNumber("x"), "9")
    expect_equal(letterToNumber("y"), "9")
    expect_equal(letterToNumber("z"), "9")
    expect_equal(letterToNumber("z", qz = 0), "0")
    expect_equal(letterToNumber("A"), "2")
    expect_equal(letterToNumber("B"), "2")
    expect_equal(letterToNumber("C"), "2")
    expect_equal(letterToNumber("D"), "3")
    expect_equal(letterToNumber("E"), "3")
    expect_equal(letterToNumber("F"), "3")
    expect_equal(letterToNumber("G"), "4")
    expect_equal(letterToNumber("H"), "4")
    expect_equal(letterToNumber("I"), "4")
    expect_equal(letterToNumber("J"), "5")
    expect_equal(letterToNumber("K"), "5")
    expect_equal(letterToNumber("L"), "5")
    expect_equal(letterToNumber("M"), "6")
    expect_equal(letterToNumber("N"), "6")
    expect_equal(letterToNumber("O"), "6")
    expect_equal(letterToNumber("P"), "7")
    expect_equal(letterToNumber("Q"), "7")
    expect_equal(letterToNumber("Q", qz = 0), "0")
    expect_equal(letterToNumber("R"), "7")
    expect_equal(letterToNumber("S"), "7")
    expect_equal(letterToNumber("T"), "8")
    expect_equal(letterToNumber("U"), "8")
    expect_equal(letterToNumber("V"), "8")
    expect_equal(letterToNumber("W"), "9")
    expect_equal(letterToNumber("X"), "9")
    expect_equal(letterToNumber("Y"), "9")
    expect_equal(letterToNumber("Z"), "9")
    expect_equal(letterToNumber("Z", qz = 0), "0")
    expect_equal(letterToNumber("1"), "1")
    expect_equal(letterToNumber("0"), "0")    
    expect_equal(letterToNumber("-"), "-")
    expect_equal(letterToNumber("#"), "-")
    expect_equal(letterToNumber("!"), "-")
    expect_equal(letterToNumber(" "), "-")
    expect_equal(letterToNumber("adZ 123"), "239-123")    
    expect_equal(letterToNumber("adZ 123", qz = 0), "230-123")    
})