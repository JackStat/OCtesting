#' Read in OC CRF excel files
#'
#' @description This function reads in and stacks the items sheet of the OC CRFs
#'
#' @param path the path of the folder that the CRFs are in.
#'
#' 
#' @author Tyler Hunt \email{tyler.hunt@@utah.edu}
#'
#' @import gdata
#' 
read.forms<-function(path){
  
  crfs<-list.files(path)
  
  #-Read just the .xls files
  crfs<-crfs[substr(crfs, nchar(crfs)-3, nchar(crfs))==".xls"]
  
  for(i in 1:length(crfs)){
    temp<-read.xls(paste(path, "/", crfs[i], sep=""), sheet="Items")
    
    temp$CRFname<-crfs[i]
    
    if(!exists("final")){
      final<-temp
    }
    
    if(exists("final")){
      final<-rbind(final, temp)
    }
    
    
  }
  
  final
  
}
