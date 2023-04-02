for fastq in fqs/*.fastq; do
    fastqc $fastq -o raw_fastqc
    echo " "
done

cd raw_fastqc
multiqc . 