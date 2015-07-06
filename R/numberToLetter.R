#' 
#' Convert numbers to letters as on a telephone's keypad
#' 
#' Take a character vector (i.e., a telephone number) and convert it to all
#' all possible letter combinations as on from a telephone's key pad
#' 
#' @param value An input value as a character vector with one element (a string)
#' @param decreasing Whether to sort the results in alphabetical order or not
#' 
#' @export
#' 
#' @examples
#' numberToLetter("911")
#' numberToLetter(911)
#' numberToLetter("911!")
#' 
#' @return A character vector of letters and dashes based on value

numberToLetter <- function(value, decreasing = FALSE) {
    if(is.na(value)) { stop("Argument must be a string.") } else {
        value <- as.character(value)
        value <- gsub("[^A-Za-z0-9]", "-", value)
        value <- toupper(value)
        valueSplit <- strsplit(value, "")[[1]]    
        strList <- list()
        for (char in valueSplit) {        
            letterSplit <- if (char == "2") { strsplit(LETTERS[1:3], "") } else {
                if (char == "3") { strsplit(LETTERS[4:6], "") } else {
                if (char == "4") { strsplit(LETTERS[7:9], "") } else {
                if (char == "5") { strsplit(LETTERS[10:12], "") } else {
                if (char == "6") { strsplit(LETTERS[13:15], "") } else {
                if (char == "7") { strsplit(LETTERS[16:19], "") } else {
                if (char == "8") { strsplit(LETTERS[20:22], "") } else {
                if (char == "9") { strsplit(LETTERS[23:26], "") } else { char }                                
                }}}}}}}
            strList[[length(strList)+1]] <- letterSplit
        }
        strDF <- expand.grid(strList)
        lettString <- do.call(paste0, strDF[1:ncol(strDF)])
        lettString <- sort(lettString, decreasing)
        return(lettString)
    }
}