plot2 <- function(){
    ## Load the loadPlotData helper file
    if (!exists("loadPlotData", mode = "function")) source("loadPlotData.r")
    
    ## Load the data - this function is defined in loadPlotData
    data <- loadPlotData()
    
    ## Open the png file
    png("plot2.png", width = 480, height = 480)
    
    ## Write the graph to the png file
    plot(subset$combinedTime, subset$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab="")
    
    ## Close the png file
    dev.off()
}
