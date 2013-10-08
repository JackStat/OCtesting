#' Identify item names with special characters
#' 
#' @param OCstack A stacked dataset of the CRFs see read.forms
#'
#' @author Tyler Hunt \email{tyler.hunt@@utah.edu}


specialChars<-function(OCstack){
  
  items<-as.character(OCstack$ITEM_NAME)
  
  items[!str_detect(items,"^[a-zA-Z0-9 _]*$")]

}
