plot1 <- function(){
    ## Load the loadPlotData helper file
    if (!exists("loadPlotData", mode = "function")) source("loadPlotData.r")
    
    ## Load the data - this function is defined in loadPlotData
    data <- loadPlotData()

    ## Open the png file
    png("plot1.png", width = 480, height = 480)
    
    ## Write the graph to the png file
    hist(subset$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
    
    ## Close the png file
    dev.off()
}
