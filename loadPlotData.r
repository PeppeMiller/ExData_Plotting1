loadPlotData <- function(){
    ## Load the data
    data <- read.csv("household_power_consumption.txt", sep = ';', header = TRUE, colClasses = "character")
    
    ## Subset the data to just the two key dates
    subset <- data[data[,1] == "1/2/2007" | data[,1] == "2/2/2007",]
    
    ## Create a single comgined date/timestamp
    subset$DateTime <- strptime(paste(subset[,1], subset[,2], sep=" "), format = "%d/%m/%Y %T")
    
    ## Convert the numeric columns to the numeric data type
    subset[, seq(3,9)] <- suppressWarnings(lapply(subset[, seq(3,9)], as.numeric))
        
    subset
}
