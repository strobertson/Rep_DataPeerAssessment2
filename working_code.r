# Code backup

# Create data folder in working directory
if (!file.exists("data")) {
        dir.create("data")
}

# Store url of data file as a variable
url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"

# Download data file to data folder, if not already present, and store download time
if(!file.exists("./data/stormdata.csv")) {
        download.file(fileUrl, "./data/stormdata.csv", method = "curl")
        date_downloaded <- Sys.time()
}

