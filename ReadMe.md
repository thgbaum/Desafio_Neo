# Desafio Neoprospecta

## SET UP

* This application uses conda package for environment management

* use *make setup* and then *conda activate mice_analysis* to prepare application environment

* Still, some applications shall be download manualy, use commands:

    * wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip 
    * unzip fastqc_v0.12.1.zip 
    * chmod 755 fastqc
    * sudo apt install trimmomatic


## Data Quality

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

##  Analysis of OTU and TAX tables
* 2.1 graphic bar can be visualized at https://colab.research.google.com/drive/1KHU2EsdevxtKBS0YB5EfMCDGdVy4pjAy?usp=sharing

## 
* 3.1
    * Montagem -> Usar ferramentas como Velvet, A5 e Newbler
    * Anotação -> Prokka
    * Qualidade -> Fastqc para verificar qualidade e o Trimmomatic para cortar/trimmar nucleotídeos com baixa fidelidade. 

* 3.2
    * talvez com kraken (alguma variante minikraken, kraken2), 

* 3.3
    * Sim, é possível construir scripts (em bash, por exemplo) para automatizar o carregamento de arquivos múltiplos. Uma opção um pouco mais elaborada seria adicionando argumentos *command line interface* - cli, de modo que ao especificar os arquivos de input e output, estes  alimentariam um *framework* que poderia automatizar as etapas de montagem, anotação, verificação de qualidade e salvar os arquivos desejados num diretório pré-estabelecido. Também é possível utilizar linguagens de programação como python, desde que esta conte com suporte compatível ao *software* que se deseja trabalhar.
    * Testando com algumas amostras, adicionando *check-points*, como relatórios em alguns pontos da *pipeline*, definindo limiares e analisando *outliers* que os ultrapassem para verificar se realmente se trata de *outliers* ou falhas na *pipeline*
    * Como desvantagem, recursos utilizados na ferramenta podem acabar sendo descontinuados, gerando necessidade de refatorar código para algo mais atualizado

* 3.4
    * Talvez com auxílio do krona para visualizar os genomas que são alegados