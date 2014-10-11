plot4 <- function(){
    ## Load the loadPlotData helper file
    if (!exists("loadPlotData", mode = "function")) source("loadPlotData.r")
    
    ## Load the data - this function is defined in loadPlotData
    data <- loadPlotData()
    
    ## Open the png file
    png("plot4.png", width = 480, height = 480)

    par(mfrow = c(2,2))
    
    #####################################
    ## Write the graph to the png file ##
    #####################################

    ############
    ## Plot 1 ##
    ############

    plot(subset$combinedTime, subset$Global_active_power, type = "l", ylab = "Global Active Power", xlab="")
    
    ############
    ## Plot 2 ##
    ############

    plot(subset$combinedTime, subset$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
    
    ############
    ## Plot 3 ##
    ############
    
    ## Create the base plot
    plot(subset$combinedTime, subset$Sub_metering_1, col="black", type = "l", xlab = "", ylab = "Energy sub metering")
    
    ## Add the extra lines
    lines(subset$combinedTime, subset$Sub_metering_2, col = "red", type = "l")
    lines(subset$combinedTime, subset$Sub_metering_3, col = "blue", type = "l")
    legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

    
    ############
    ## Plot 4 ##
    ############

    plot(subset$combinedTime, subset$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
    
    
    ## Close the png file
    par(mfrow = c(1,1))
    dev.off()
}
