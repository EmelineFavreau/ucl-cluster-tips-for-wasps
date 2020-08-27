# All jobs should complete with an exit status of zero
# You can try checking exit status in the command line. 
# For example, to see if all jobs in an array succeeded (or how many succeeded and how many didn’t and what exit status they failed with). 

qacct -j 1208304 | grep exit_status | sort |  uniq

# To get exit status for each job for drilling down further:

qacct -j 1208304 | grep -E "^taskid|exit_status"

# You can get that as a table with task id in the first column and exit status in the second:

qacct -j 1208304 | grep -E "^taskid|exit_status" | paste - - | tr -d '[a-z_ ]'

# You can then sort the second column numerically to see which failed - they will be at the tail end:

qacct -j 1208304 | grep -E "^taskid|exit_status" | paste - - | tr -d '[a-z_ ]' | sort -nk2
