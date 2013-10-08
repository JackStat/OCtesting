#' Identify item names with excessive underscores
#' 
#' @param OCstack A stacked dataset of the CRFs see read.forms
#' @param allowed the number of underscores allowed in an item name
#' 
#' @author Tyler Hunt \email{tyler.hunt@@utah.edu}
#' 
#' @import stringr



underscores<-function(OCstack, allowed=2){
  
  items<-as.character(OCstack$ITEM_NAME)
  
  items[str_detect(items, "_")]
  
}

