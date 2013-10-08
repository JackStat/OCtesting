#' Identify item names that do not begin with a alphabetic character
#' 
#' @param OCstack A stacked dataset of the CRFs see read.forms
#'
#' @author Tyler Hunt \email{tyler.hunt@@utah.edu}


alphaStart<-function(OCstack){
  
  items<-as.character(OCstack$ITEM_NAME)
  
  OCstack[!str_detect(substr(items, 1,1),"[a-zA-Z]"), c("ITEM_NAME", "CRFname")]
  
}
