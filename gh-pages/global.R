state_data <- read.csv("StatewiseTestingDetails.csv", header = TRUE, stringsAsFactors = FALSE)
state_data$Date <- as.Date(state_data$Date, format = "%Y-%m-%d")
state_data <- state_data[order(state_data$State, state_data$Date), ]