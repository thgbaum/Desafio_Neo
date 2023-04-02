for fastq in trimmed/fqs/*.fastq; do
    fastqc $fastq -o trimmed/trimmed_fastqc
    echo " "
done

cd trimmed/trimmed_fastqc
multiqc . 