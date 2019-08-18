

pollutantmean <- function(directory, pollutant, id = 1:332){
        # Calculates the mean of a pollutant (sulfate or nitrate)
        # for a specified range of monitors.
        # Each monitors data is contained in a seperate CSV file.
        # Files are named 'xxx.csv' where xxx is the monitor ID number (eg, '001.csv').
        #
        # Each file contains 4 x values:
        #       date of observation ('Date') in YYYY-MM-DD format.
        #       sulfate ('sulfate) in number format.
        #       nitrate ('nitrate') in number format.
        
        
        
                for (element in id) {
                        # Introduce leading zeros for range 001 - 0009
                        # and range 010 - 099 so csv files that are 
                        # not 3 digits will still be read correctly into 
                        # DF.
                        if(element < 10) {
                                element <- paste("00", element, sep = "")
                        } else if (element >=10 && element <= 99) {
                                element <- paste("0", element, sep = "")
                        } else {
                                element <- paste(element, sep = "")
                        }
                        
                        # Now create current iteration filename
                        csv_name <- paste(directory, "/", as.character(element), ".csv", sep = "")
                        
                        ###DEBUGGING ###
                        
                        print(csv_name)
                        
                        ################
                        
                        # If first time through loop then create initial DF.
                        if(id[1] == TRUE) {
                                df <- read.csv(csv_name, stringsAsFactors = FALSE)
                        }
                        
                        
                        # Check to see if more than one file specified as 'id' arg.
                        # If multiple files then continue loop to append all files to DF,
                        # otherwise exit for loop.
                        if(length(id) == 1) {
                                df <- read.csv(csv_name, stringsAsFactors = FALSE)
                                break()
                        } else {
                                # >1 value in 'id' arg so append current csv to DF.
                                rbind(df, csv_name)
                        }
                        
                        
                        
                }
                
                
                # Filter by 'pollutant' arg.
                
                
                # Calculate the mean.
        }
        
        
        
        

        

