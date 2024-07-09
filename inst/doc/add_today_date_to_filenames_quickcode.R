## -----------------------------------------------------------------------------
# quickcode::clean(clearPkgs = TRUE) #clear environment and clear previous package
quickcode::libraryAll(datasets) #load in-built dataset

## -----------------------------------------------------------------------------
data("USArrests")

filenames = paste0(row.names(USArrests), ".txt")

head(filenames,8) # before adding today's date

rev.filenames = fAddDate(filenames) # append today's date to the file names

rev.filenames

#...write further codes to use the file names to save new files.


