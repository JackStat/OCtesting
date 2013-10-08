#' Test the length of the name of items.
#'
#' @description Allows for users to test the length of items so they can be shortened if neccessary.
#' 
#' @param OCstack A stacked dataset of the CRFs see read.forms
#' @param length The maximum item name length desired
#' @param type can be item, description, or label.
#'
#' @author Tyler Hunt \email{tyler.hunt@@utah.edu}

item.length<-function(OCstack, length=32, type="item"){
  
  if(type=="item"){
  items<-as.character(OCstack$ITEM_NAME)
  }
  
  if(type=="description"){
    items<-as.character(OCstack$DESCRIPTION_LABEL)
  }
  
  if(type=="label"){
    items<-as.character(OCstack$RESPONSE_LABEL)
  }
  
  items[nchar(items)>length]
}
