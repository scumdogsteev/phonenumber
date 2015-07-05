#' 
#' Convert letters to numbers as on a telephone's keypad
#' 
#' Take a character vector and convert it to the equivalent number sequence
#' from a telephone's key pad
#' 
#' @param value An input value as a character vector with one element (a string)
#' 
#' @export
#' 
#' @examples
#' letterToNumber("R functions")
#' string <- "Phone Number"
#' letterToNumber(string)
#' letterToNumber("Jenny's Number is 867-5309")
#' @return A character vector of numbers and dashes based on value

letterToNumber <- function(value) {
    if(is.na(value)) { stop("Argument must be a string.") } else {
        value <- as.character(value)
        value <- gsub("[^A-Za-z0-9]", "-", value)
        value <- toupper(value)
        valueSplit <- strsplit(value, "")[[1]]
        numString <- as.character()
        for (char in valueSplit) {
            elem <- ifelse(is.element(char, LETTERS[1:3]), "2",
                    ifelse(is.element(char, LETTERS[4:6]), "3",
                    ifelse(is.element(char, LETTERS[7:9]), "4",
                    ifelse(is.element(char, LETTERS[10:12]), "5",
                    ifelse(is.element(char, LETTERS[13:15]), "6",
                    ifelse(is.element(char, LETTERS[16:19]), "7",
                    ifelse(is.element(char, LETTERS[20:22]), "8",
                    ifelse(is.element(char, "-") | 
                        suppressWarnings(!is.na(as.numeric(char))), char,
                    "9"))))))))
            numString <- c(numString, elem)
        }
        return(paste0(numString, collapse = ""))
    }
}