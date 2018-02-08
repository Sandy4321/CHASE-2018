project <- "linguist"
closed_file_path <- paste("/home/fronchetti/Documentos/CHASE-2018/Dataset/", project, "/closed_pull_requests_summary.csv", sep="")
merged_file_path <- paste("/home/fronchetti/Documentos/CHASE-2018/Dataset/", project, "/merged_pull_requests_summary.csv", sep="")

# Best pratice 1
# Closed
closed_file <- read.csv(closed_file_path)
bp1_internals_closed_in <- subset(closed_file, user_type == "Internals" & (number_of_files_changed <= 2 & number_of_additions <= 20))
bp1_externals_closed_in <- subset(closed_file, user_type == "Externals" & (number_of_files_changed <= 2 & number_of_additions <= 20))
bp1_internals_closed_out <- subset(closed_file, user_type == "Internals" & (number_of_files_changed > 2 | number_of_additions > 20))
bp1_externals_closed_out <- subset(closed_file, user_type == "Externals" & (number_of_files_changed > 2 | number_of_additions > 20))

# Merged
merged_file <- read.csv(merged_file_path)
bp1_internals_merged_in <- subset(merged_file, user_type == "Internals" & (number_of_files_changed <= 2 & number_of_additions <= 20))
bp1_externals_merged_in <- subset(merged_file, user_type == "Externals" & (number_of_files_changed <= 2 & number_of_additions <= 20))
bp1_internals_merged_out <- subset(merged_file, user_type == "Internals" & (number_of_files_changed > 2 | number_of_additions > 20))
bp1_externals_merged_out <- subset(merged_file, user_type == "Externals" & (number_of_files_changed > 2 | number_of_additions > 20))

# Best pratice 3
# Closed
closed_file <- read.csv(closed_file_path)
bp3_internals_closed_in <- subset(closed_file, user_type == "Internals" & (number_of_characters <= 50 & second_line_is_blank == "True" & language == "en"))
bp3_externals_closed_in <- subset(closed_file, user_type == "Externals" & (number_of_characters <= 50 & second_line_is_blank == "True" & language == "en"))
bp3_internals_closed_out <- subset(closed_file, user_type == "Internals" & (number_of_characters > 50 | second_line_is_blank != "True" | language != "en"))
bp3_externals_closed_out <- subset(closed_file, user_type == "Externals" & (number_of_characters > 50 | second_line_is_blank != "True" | language != "en"))

# Merged
merged_file <- read.csv(merged_file_path)
bp3_internals_merged_in <- subset(merged_file, user_type == "Internals" & (number_of_characters <= 50 & second_line_is_blank == "True" & language == "en"))
bp3_externals_merged_in <- subset(merged_file, user_type == "Externals" & (number_of_characters <= 50 & second_line_is_blank == "True" & language == "en"))
bp3_internals_merged_out <- subset(merged_file, user_type == "Internals" & (number_of_characters > 50 | second_line_is_blank != "True" | language != "en"))
bp3_externals_merged_out <- subset(merged_file, user_type == "Externals" & (number_of_characters > 50 | second_line_is_blank != "True" | language != "en")) 

