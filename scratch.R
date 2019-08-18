
# test creating character vector of filenames from ids.
id <- as.numeric()
id <- 2:100 # dummy id numeric vector
csv_file_num <- character(length = length(id))

###  PASS ###
for(i in 1:length(id)) { #from 1st to nth element in vector
        print(id[i])
        if(id[i] < 10) {
                csv_file_num[i] <- paste("00", id[i], sep = "")
        } else if (id[i] >=10 && id[i] <= 99) {
                csv_file_num[i] <- paste("0", id[i], sep = "")
        } else {
                csv_file_num[i] <- paste(id[i], sep = "")
        }
}
### PASS ###


# test creating full filename including path from 'directory' and 'id'.
directory <- "specdata"
for(i in id) {
        csv_files <- paste(directory, "/", id, ".csv", sep = "")
}

