# Code backup

# Create data folder in working directory
if (!file.exists("data")) {
        dir.create("data")
}

# Store url of data file as a variable
url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"

# Download data file to data folder, if not already present, and store download time
if(!file.exists("./data/stormdata.csv.bz2")) {
        download.file(url, "./data/stormdata.csv.bz2", method = "curl")
        date_downloaded <- Sys.time()
}

# Read the csv file into environment
storm_data <- read.csv("./data/stormdata.csv.bz2", header = TRUE, sep = ",")
