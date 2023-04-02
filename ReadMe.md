# Desafio Neoprospecta

## Qualidade dos dados 

Command *bash scripts/quality.sh* 
* Generates fastqc results, before trimming, on **raw_fastqc** folder
* input:
    * fastq data in folder **fqs**

* output:
    * fastqc data in folder **raw_fastqc**
    * file **raw_fastqc/multiqc_report** sumarizes quality for given data

Command *bash scripts/trim.sh*
* Trims fastqs from **fqs** folder and saves trimmed fastqs in **trimmed/fqs** folder

Command *bash scripts/quality_trimmed_data.sh*
* Generates fastqc results, after trimming, on **trimmed/trimmed_fastqc** folder
* input: 
    * trimmed fastq files from **trimmed/fqs** folder

* output:
    * fastqc data in **trimmed_trimmed_fastqc** folder
    * file **trimmed/trimmed_fastqc/multiqc_report** sumarizes quality for given trimmed data