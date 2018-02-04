#############################################################
#     File Name           :     C:/Users/mblundell/Documents/ARE/BikeShare/Code/downloadData.R
#     Created By          :     MBlundell
#     Creation Date       :     [2018-01-30 21:01]
#     Last Modified       :     [2018-02-01 15:12]
#     Description         :      
#############################################################

# 
# Set up.
#
dir <- "C:/Users/mblundell/Documents/ARE/BikeShare/"
original.data <- paste0(dir, "OriginalData/")
modified.data <- paste0(dir, "ModifiedData/")

# 
# Download turnstile data.
#

# Set initial and final values
date <- as.Date("2010-5-8")
last.date <- as.Date("2018-1-27")
url <- "http://web.mta.info/developers/data/nyct/turnstile/turnstile_"
results <- list()
while(date <= last.date) {
    file.name <- paste0(format(date, format = "%y%m%d"), ".txt")
    error <- try(download.file(paste0(url, file.name), 
                               paste0(original.data, "Turnstile/", file.name),
                               method = "wininet"))
    if (class(error) == "try-error") {
        results[[format(date, format = "%y%m%d")]] <- F
    } else {
        results[[format(date, format = "%y%m%d")]] <- T
    }
    date <- date + 7
}

example <- data.frame(names = c("Barry", "Bill"), ages = c(14, 54))


paste





