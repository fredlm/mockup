library(readxl)
list <- list.files(path = "data", pattern = "file.*.xls") #List excel files

#Aggregate all excel files
df <- lapply(list, read_excel)
for (i in 1:length(df)){
  df[[i]] <- cbind(df[[i]], list[i])
}
df <- do.call("rbind", df)
