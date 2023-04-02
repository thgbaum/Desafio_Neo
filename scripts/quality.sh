for fastq in fqs/*.fastq; do
    fastqc $fastq -o resultados
    echo " "
done

cd resultados
multiqc . 