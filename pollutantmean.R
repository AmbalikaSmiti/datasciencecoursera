pollutantmean <- function(directory, pollutant, id=1:332)
{ 
        sumofpOl <- 0
        rownum <-0
      wdir <- paste(getwd(),directory,sep="/" )
     for(i in seq_along(id))
       {
      usefile<-sprintf("%s/%03d.csv",wdir, id[i])
    data<-read.csv(usefile)
    sumofpOl <-sumofpOl+sum(data[[pollutant]], na.rm = TRUE)
    rownum <- rownum+sum(!is.na(data[[pollutant]]))
     }
    round(sumofpOl/rownum, digit=3)
}
