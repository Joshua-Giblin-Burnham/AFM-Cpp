 #!/bin/bash 
 # Script to download files from RCSB http file download services. 

 PROGNAME=$0 
 BASE_URL="https://files.rcsb.org/download" 

 download() { 
   url="$BASE_URL/$1" 
   out=$2/$1 
   echo "Downloading $url to $out" 
   curl -s -f $url -o $out || echo "Failed to download $url" 
 } 

outdir=/home/joshgb/Documents/C++/bn
shift "$((OPTIND - 1))" 
contents="1bna"

   download $contents.cif.gz $outdir 
