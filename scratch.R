
# test creating character vector of filenames from ids.
id <- 1 # dummy id numeric vector

###  PASS ###
for(i in id) {
        if(i < 10) {
                id[i] <- paste("00", i, sep = "")
        } else if (i >=10 && i <= 99) {
                id[i] <- paste("0", i, sep = "")
        } else {
                id[i] <- paste(i, sep = "")
        }
}
### PASS ###


# test creating full filename including path from 'directory' and 'id'.
directory <- "specdata"
i = 0
for(i in id) {
        csv_files <- paste(directory, "/", id, ".csv", sep = "")
}
