plot3 <- function(){
    ## Load the loadPlotData helper file
    if (!exists("loadPlotData", mode = "function")) source("loadPlotData.r")
    
    ## Load the data - this function is defined in loadPlotData
    data <- loadPlotData()
    
    ## Open the png file
    png("plot3.png", width = 480, height = 480)
    
    
    #####################################
    ## Write the graph to the png file ##
    #####################################
    
    ## Create the base plot
    plot(subset$combinedTime, subset$Sub_metering_1, col="black", type = "l", xlab = "", ylab = "Energy sub metering")
    
    ## Add the extra lines
    lines(subset$combinedTime, subset$Sub_metering_2, col = "red", type = "l")
    lines(subset$combinedTime, subset$Sub_metering_3, col = "blue", type = "l")
    legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    ## Close the png file
    dev.off()
}
