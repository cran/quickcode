#' Alternative return for statements
#'
#' Return alternative if the value of expression is empty or NA or NULL
#'
#' @rdname orsign
#' @param test an object to return
#' @param alternative alternative object to return
#' @return value of test if not null or empty, else return value of alternative
#'
#' test1 <- c(4,NA,5,2,0,21)
#'
#' test2 <- data.frame(ID = 1:10,ED = LETTERS[10:1])
#'
#' or(test1[which(test1==4)],100)
#'
#'
#' or(test1[which(test1==43)],100)
#'
#' or(test2[which(test2$ID == 10),2],"BBBBB")
#'
#' or(test2[which(test2$ID == 323),2],"CCCCC")
#'
#' # One may also choose to use
#' test2[which(test2$ID == 323),2] %or% "CCCCC"
#' NA %or% "Random"
#' NULL %or% "Random"
#' "" %or% "Random"
#'
#' @export
or <- function(test,alternative){

  res <- test
  if(!length(res)) return(alternative)
  if(is.null(res)|is.na(res) | is.nan(res) | !not.empty(res)) return(alternative)
  res

}

#' @rdname orsign
#' @export
`%or%` <- or
