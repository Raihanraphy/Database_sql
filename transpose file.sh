# Read from the file file.txt and print its transposed content to stdout.
awk 'NR==1 { nf=NF } { for (i=1; i<=NF; i++) a[i] = (NR==1) ? $i : a[i] " " $i } END { for (i=1; i<=nf; i++) print a[i] }' file.txt
