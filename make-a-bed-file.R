# create bed file of sig snps in a 1000bp regions

# first colum of BED file is the contig name formatted
bed_col1 <- paste("contig",
                  gsub(x = sig_n_snp_vec,
                       pattern = "_pilon.*",
                       replacement = ""),
                  sep = ".")

# second column of BED is the start of the region 
bed_col2 <- (as.numeric(gsub(x = sig_n_snp_vec,
     pattern = ".*:|([A-Z],[A-Z])",
     replacement = ""))) - 500

# third column of BED is the end of the region 
bed_col3 <- (as.numeric(gsub(x = sig_n_snp_vec,
                             pattern = ".*:|([A-Z],[A-Z])",
                             replacement = ""))) + 500

# make a dataframe to save
bed_file_n <- as.data.frame(cbind(bed_col1, bed_col2, bed_col3)) 

# save it for blast use
write.table(x = bed_file_n,
            file = "analysis/n-sig.BED",
            quote = FALSE,
            row.names = FALSE)
