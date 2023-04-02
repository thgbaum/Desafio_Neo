for fastq in fqs/*.fastq; do 
    echo ">>" Processing $fastq file 
    TrimmomaticSE $fastq trimmed/$fastq HEADCROP:20 SLIDINGWINDOW:5:20
    echo
done 