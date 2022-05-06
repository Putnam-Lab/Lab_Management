# DNA methylation workflows: bioinformatic pipeline for quality control

Contents:   
- [**General lab resources**](#resources)   
- [**Laboratory method: Methyl-Binding Domain Bisulfite Sequencing (MBD-BS)**](#MBDBS)
- [**Sequencing**](#seq)   
- [**Nextflow methylseq pipeline: methylation quantification**](#methylseq)   
- [**Merge strands**](#merge)   
- [**Filter for a specific coverage (e.g. 5x, 10x)**](#5x)   
- [**Create a file with positions found in all samples at specified coverage**](#all_positions)   
- [**Gene Annotation**](#annotation)   
- [**Intersect with file to subset only those positions found in all samples**](#final_positions)   

## <a name="resources"></a> **General lab resources**

- [Danielle Becker's methylseq presentation from 2021 lab meeting](https://docs.google.com/presentation/d/1qNMI2-LmyvqwNZ4J8FaHIg7d-niXm5jxEeeL1aobXeI/edit#slide=id.p4)  
- [K. Wong WGBS workflow with P. asteroides](https://github.com/kevinhwong1/Thermal_Transplant_Molecular/blob/main/scripts/Past_WGBS_Workflow.md)  
- [D. Becker WGBS workflow with P. verrucosa](https://github.com/hputnam/Becker_E5/blob/master/Bioinformatics/Workflows/Becker_WGBS_Workflow.md)     
- [E. Strand WGBS workflow with P. acuta](https://github.com/emmastrand/EmmaStrand_Notebook/blob/master/_posts/2021-10-21-HoloInt-WGBS-Analysis-Pipeline.md)  
- [E. Strand WGBS workflow with M. capitata](https://github.com/emmastrand/EmmaStrand_Notebook/blob/master/_posts/2021-10-21-KBay-Bleaching-Pairs-WGBS-Analysis-Pipeline.md)

## <a name="MBDBS"></a> **Laboratory method: Methyl-Binding Domain Bisulfite Sequencing (MBD-BS)**

We used MBD-BS for our 2022 lab meetings oyster methylation paper: [Cvir github page](https://github.com/hputnam/Cvir_Nut_Int); [laboratory protocol details post](https://github.com/hputnam/Cvir_Nut_Int#m-schedl-mbdbs-library-preps). Other methods include Whole Genome Bisulfite Sequencing (WGBS) and RRBS (Reduced Representation Bisulfite Sequencing), but see methods comparison paper [Trigg et al 2021](https://onlinelibrary.wiley.com/doi/pdf/10.1111/1755-0998.13542).

Because <20% of the genome is methylated for invertebrates and WGBS is costly, using a method that enriches for the methylated regions of the DNA prior to bisulfite sequencing can be beneficial.

#### 1. Enriching for highly methylated regions

We used the [Invitrogen Methylminer Methylated DNA Enrichment Kit](https://www.thermofisher.com/order/catalog/product/ME10025). For full protocol details, see [here](https://github.com/hputnam/Cvir_Nut_Int#enriching-for-highly-methylated-regions-with-dna-samples-of-eastern-oyster-from-rebecca-stevick-using-the-invitrogen-methylminer-methylated-dna-enrichment-kit). This kit uses the Methyl-binding domain protein to only capture methylated regions.

![](https://international.neb.com/-/media/nebus/page-images/products/epigenetics/e2600_figure-1.png?rev=3fb54a2c3cff4bb1a45ee07980b9ae4b&hash=833B1AAF16887F5CCE9D6881ABE67BDB)

#### 2. Bisulfite conversion

We used the [Zymo Pico Methyl Seq Kit](https://www.zymoresearch.com/products/pico-methyl-seq-library-prep-kit). For full protocol details, see [here](https://github.com/hputnam/Cvir_Nut_Int#using-the-zymo-pico-methyl-seq-kit-on-the-mbd-enriched-eastern-oyster-dna-from-samples-from-rebecca-stevick). Bisulfite conversion steps convert any *un-methylated* cytosine into a uracil that in later steps becomes a thymine. With these sequences, you can compare to a reference genome and calculate the % methylation based on how many C's match the reference genome and how many T's don't.

![](https://nbis-workshop-epigenomics.readthedocs.io/en/latest/_images/biseq.png)

![](https://www.bioscience.co.uk/userfiles/images/picomethylseq_correctsize.png)

## <a name="seq"></a> **Sequencing**

Samples are all pooled together (they have adapters on them so we can trace which read came from which sample) and then sequenced on a single Illumina NovaSeq S4 flow cell lane for 2 x 150 bp sequencing at Genewiz.

Product from sequencing: each sample has a forward and reverse read:

```
#SAMPLE-NAME#_R1_001.fastq.gz  # forward
#SAMPLE-NAME#_R2_001.fastq.gz  # reverse
```

C. virginica genome (the reference we will be using): https://www.ncbi.nlm.nih.gov/genome/398

We don't do a multiqc report prior to methylseq because it is embedded in that script and will be an output file at the end. You could do this before if you needed to.

## <a name="methylseq"></a> **Nextflow methylseq pipeline: methylation quantification**

In these steps we are taking 2 fastq files per sample as an input, *insert summary of what is going on.*

**[nf-core/methylseq](https://nf-co.re/methylseq/1.6.1)** is a methylation (Bisulfite-Sequencing) analysis pipeline using Bismark or bwa-meth + MethylDackel. It pre-processes raw data from FastQ inputs, aligns the reads and performs extensive quality-control on the results. The pipeline is built using [Nextflow](https://www.nextflow.io/), a workflow tool to run tasks across multiple compute infrastructures in a very portable manner. It comes with docker containers making installation trivial and results highly reproducible.

Definitions:  
- [nf-core](https://nf-co.re/): a "project" that allows bioinformatics community to come together and share pipelines ("A community effort to collect a curated set of analysis pipelines built using Nextflow.").     
- [methylseq](https://nf-co.re/methylseq/1.6.1): bioinformatic pipeline specific to DNA methylation data, found on nf-core webpage.     
- [Nextflow](https://www.nextflow.io/): a framework that allows a bioinformatician to integrate all scripts into one cohesive pipeline that is reproducible, scalable, and checkpointed.

### Pipeline summary

We use the bismark workflow in our current pipelines.

| **Step**                                       	| **Bismark workflow** 	| **bwa-meth workflow**     	|
|--------------------------------------------	|------------------	|-----------------------	|
| Generate Reference Genome Index (optional) 	| Bismark          	| bwa-meth              	|
| Raw data QC                                	| FastQC           	| FastQC                	|
| Adapter sequence trimming                  	| Trim Galore!     	| Trim Galore!          	|
| Align Reads                                	| Bismark          	| bwa-meth              	|
| Deduplicate Alignments                     	| Bismark          	| Picard MarkDuplicates 	|
| Extract methylation calls                  	| Bismark          	| MethylDackel          	|
| Sample report                              	| Bismark          	| -                     	|
| Summary Report                             	| Bismark          	| -                     	|
| Alignment QC                               	| Qualimap         	| Qualimap              	|
| Sample complexity                          	| Preseq           	| Preseq                	|
| Project Report                             	| MultiQC          	| MultiQC               	|

### Parameter choices

**Usage choices**:

- `- profile`: [usage doc](https://nf-co.re/methylseq/usage#profile); we use the `singularity` profile. Similar to a conda envirionment in that it is a contained workspace.      
- `- resume`: [usage doc](https://nf-co.re/methylseq/usage#resume): this instructs methylseq to pick up where it left off (i.e. if the script got timed out). Not needed in example above.

**Input/output parameter choices**;[details here](https://nf-co.re/methylseq/1.6.1/parameters#inputoutput-options):  

- `--input '##PATH##'`: specifies where the script can find our fastq files.  
- `--outdir '##PATH##'`: output directory where results will be saved (default: ``'./results'``).  
- `--email`: email address for completion summary.  
- `--single_end`: specifies that the input is single-end reads. This isn't applicable to our example above.

If you have special library types (i.e. PBAT, EM-seq, single-cell bisulfite libraries), then there is a list of flag options to include ([details here](https://nf-co.re/methylseq/1.6.1/parameters#special-library-types)). There is a zymo flag for adapter timmining sequences, but see below section on adapter trimming trials.

**Alignment parameter choices**;[details here](https://nf-co.re/methylseq/1.6.1/parameters#alignment-options):  

- `--aligner`: we chose `bismark` (which is the default), but other options include `bismark_hisat` and `bwameth`.  
- `--comprehensive`: output information for all cytosine contexts. Not used in our example above.  

**Reference genome parameter choices**; [details here](https://nf-co.re/methylseq/1.6.1/parameters#reference-genome-options):  

- `--fasta ##PATH##`: path to FASTA genome file. There are more options for alternate reference genome flags in the link above.  
- `--igenomes_ignore`: Do not load the iGenomes reference config. iGenomes are used if you are using a genome of a model organism. If you are providing your own reference genome, make sure to use this flag.
- `--save_reference`: Save reference(s) to results directory.

**Adapter trimming parameter choices**; [details here](https://nf-co.re/methylseq/1.6.1/parameters#adapter-trimming):

- `--clip_r1`: trim bases from the 5' end of read 1 (default = 0)  
- `--clip_r2`: trim bases from the 5' end of read 2 (default = 0)  
- `--three_prime_clip_r1`: Trim bases from the 3' end of read 1 AFTER adapter/quality trimming (default = 0)  
- `--three_prime_clip_r2`: Trim bases from the 3' end of read 2 AFTER adapter/quality trimming (default = 0)  

The goal of trimming the ends of sequences beyond the adapter is to reduce the [m-bias](https://rawgit.com/FelixKrueger/Bismark/master/Docs/Bismark_User_Guide.html#m-bias-plot). For an example of testing multiple parameters, see [this notebook post](https://kevinhwong1.github.io/KevinHWong_Notebook/Methylseq-trimming-test-to-remove-m-bias/).

**Bismark parameter choices**; [details here](https://nf-co.re/methylseq/1.6.1/parameters#bismark-options):

- `--num_mismatches`: 0.6 will allow a penalty of bp * -0.6 - for 100bp reads (bismark default is 0.2) (methylseq pipeline default = 0.6)  
- `--non_directional`: Run alignment against all four possible strands   
- `--cytosine_report`: Output stranded cytosine report during Bismark's bismark_methylation_extractor step  
- `--relax_mismatches`: Turn on to relax stringency for alignment (set allowed penalty with --num_mismatches).  
- `--unmapped`: Save unmapped reads to FastQ files  
- `--meth_cutoff`: Specify a minimum read coverage to report a methylation call. We do this later in our workflow, not within methylseq.  

#### Script

```
#!/bin/bash
#SBATCH --job-name="methylseq"
#SBATCH -t 500:00:00
#SBATCH --nodes=1 --ntasks-per-node=10
#SBATCH --mem=120GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=####insert mail address####
#SBATCH -D ####insert directory####
#SBATCH --exclusive

# load modules needed

module load Nextflow/21.03.0

# make directory for Output

mkdir WGBS_methylseq  # only run this line if you don't have the directory created

# run nextflow methylseq

nextflow run nf-core/methylseq \
-profile singularity \
--aligner bismark \
--igenomes_ignore \
--fasta <PATH_TO_GENOME_FASTA> \
--save_reference \
--input '<PATH_TO_RAW_SEQUENCES>/*_R{1,2}_001.fastq.gz' \
--clip_r1 15 \ #Modify to your samples
--clip_r2 30 \ #Modify to your samples  
--three_prime_clip_r1 30 \ #Modify to your samples
--three_prime_clip_r2 15 \ #Modify to your samples
--non_directional \
--cytosine_report \
--relax_mismatches \
--unmapped \
--outdir WGBS_methylseq #Change if you want to change the name of the output folder
```

#### Overview

Once this script is completed, you will get multiple folders within the `--outdir` folder. In the `MultiQC` folder, you will have a `multiqc_report.html`, which you can export to your local computer and get a comprehensive report the methylation calls for each sample. An example of a MultiQC report can be found [here](https://multiqc.info/examples/bs-seq/multiqc_report.html).

The files generated from `methylseq` that we will use in further analyses will be found in `bismark_methylation_calls/methylation_coverage/*deduplicated.bismark.cov.gz`.


## <a name="merge"></a> **Merge strands**

The Bismark `coverage2cytosine` command re-reads the genome-wide report and merges methylation evidence of both top and bottom strand to create one file.

**Input File:**
* `*deduplicated.bismark.cov.gz`

**Output File:**
* `*merged_CpG_evidence.cov`

#### Script

`mkdir cov_to_cyto`

`cov_to_cyto.sh`

```
#!/bin/bash
#SBATCH -t 500:00:00
#SBATCH --nodes=1 --ntasks-per-node=10
#SBATCH --mem=120GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=####insert mail address####
#SBATCH -D <PATH_TO_outdir>/cov_to_cyto
#SBATCH --exclusive

# load modules needed

module load Bismark/0.20.1-foss-2018b

# run coverage2cytosine merge of strands

 find <PATH_TO_outdir>/bismark_methylation_calls/methylation_coverage/*deduplicated.bismark.cov.gz \
 | xargs basename -s _L004_R1_001_val_1_bismark_bt2_pe.deduplicated.bismark.cov.gz \
 | xargs -I{} coverage2cytosine \
 --genome_folder <PATH_TO_outdir>/reference_genome/BismarkIndex \
 -o {} \
 --merge_CpG \
 --zero_based \
<PATH_TO_outdir>/bismark_methylation_calls/methylation_coverage/{}_L004_R1_001_val_1_bismark_bt2_pe.deduplicated.bismark.cov.gz
```

## <a name="5x"></a> **Filter for a specific coverage (e.g. 5x, 10x)**

Here, we are running a loop to filter CpGs for a specified coverage and creating tab files. For the sake of this tutorial, we will continue the rest of the analysis for 5x coverage.

Each `.cov` will look like the table below without the headers:

| Scaffold | Start Position | Stop Position | % Methylated | Methylated | Unmethylated |
|:---------:|:--------------:|:-------------:|:------------:|:----------:|:------------:|
|  000000F  |      29076     |     29078     |   0.000000   |      0     |       5      |
|  000000F  |      29158     |     29160     |   0.000000   |      0     |      12      |
|  000000F  |      29185     |     29187     |   0.000000   |      0     |       8      |
|  000000F  |      29215     |     29217     |   0.000000   |      0     |       4      |
|  000000F  |      29232     |     29234     |   0.000000   |      0     |       3      |
|  000000F  |      29241     |     29243     |   11.111111  |      1     |       8      |
|  000000F  |      29277     |     29279     |   0.000000   |      0     |      11      |
|  000000F  |      29282     |     29284     |   0.000000   |      0     |      12      |
|  000000F  |      29313     |     29315     |   0.000000   |      0     |      11      |
|    29335  |      29335     |     29337     |   0.000000   |      0     |      10      |

Essentially, the loop in this script adds columns 5 (Methylated) and 6 (Unmethylated) positions and keeps that row if it is greater than or equal to 5. This means that we have 5x coverage for this position. This limits our interpretation to 0%, 20%, 40%, 60%, 80%, 100% methylation resolution per position.


**Input File:**
* `*merged_CpG_evidence.cov`

**Output File:**
* `5x_sorted.tab`

#### Script

`bedtools_sort_cov5x.sh`

```
#!/bin/bash
#SBATCH -t 500:00:00
#SBATCH --nodes=1 --ntasks-per-node=10
#SBATCH --mem=120GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=####insert mail address####
#SBATCH -D <PATH_TO_outdir>/cov_to_cyto
#SBATCH --exclusive

module load BEDTools/2.27.1-foss-2018b

### Sorting the .cov files so all lines are in the same order
for f in *merged_CpG_evidence.cov
do
  STEM=$(basename "${f}" .CpG_report.merged_CpG_evidence.cov)
  bedtools sort -i "${f}" \
  > "${STEM}"_sorted.cov
done

### Filtering for CpG for 5x coverage. To change the coverage, replace X with your desired coverage in ($5+6 >= X)

for f in *_sorted.cov
do
  STEM=$(basename "${f}" _sorted.cov)
  cat "${f}" | awk -F $'\t' 'BEGIN {OFS = FS} {if ($5+$6 >= 5) {print $1, $2, $3, $4, $5, $6}}' \
  > "${STEM}"_5x_sorted.tab
done
```

Your output file should now look like the example below:

```
000000F 19622   19624   0.000000        0       11
000000F 19640   19642   0.000000        0       11
000000F 19656   19658   0.000000        0       10
000000F 19673   19675   0.000000        0       7
000000F 19678   19680   0.000000        0       6
000000F 19702   19704   0.000000        0       7
000000F 19708   19710   0.000000        0       7
```

## <a name="all_positions"></a> **Create a file with positions found in all samples at specified coverage**

For a later step, we need to create a file that identifies the positions found in all samples. This includes both methylated and unmethylated positions after filtering for a specific coverage. First, we will use  `multiIntersectBed` to create a file that merges all of the samples together. In the fourth column of this file, it tells you how many samples have that position (i.e. row). Second, we filter the positions that are present in all of the samples (i.e. the fourth column should equal the number of samples you have in your dataset).

**Input File:**
* `5x_sorted.tab`

**Output File:**
* `CpG.filt.all.samps.5x_sorted.bed`

#### Script

`5x_intersect.sh`

```
#!/bin/bash
#SBATCH -t 500:00:00
#SBATCH --nodes=1 --ntasks-per-node=10
#SBATCH --mem=120GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=####insert mail address####
#SBATCH -D <PATH_TO_outdir>/cov_to_cyto
#SBATCH --exclusive

# load modules needed

module load BEDTools/2.27.1-foss-2018b

multiIntersectBed -i *_5x_sorted.tab > CpG.all.samps.5x_sorted.bed

cat CpG.all.samps.5x_sorted.bed | awk '$4 ==<INSERT_NUMBER_OF_SAMPLES>' > CpG.filt.all.samps.5x_sorted.bed
```

## <a name="annotation"></a> **Gene Annotation**

This step needs a gff file that is only includes gene positions. If you do not have a modified gff with only genes, run the following code:

```bash
awk '{if ($3 == "gene") {print}}' <ORIGINAL.gff>  > <MODIFIED.gene.gff>
```

Now we can use `intersectBed` to merge the gene annotation file with each sample file.

**Input File:**
* `*5x_sorted.tab`
* `MODIFIED.gene.gff`

**Output File:**
* `*_5x_sorted.tab_gene`

#### Script

`5x_intersectBed.sh`

```
#!/bin/bash
#SBATCH -t 500:00:00
#SBATCH --nodes=1 --ntasks-per-node=10
#SBATCH --mem=120GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=####insert mail address####
#SBATCH -D <PATH_TO_outdir>/cov_to_cyto
#SBATCH --exclusive

module load BEDTools/2.27.1-foss-2018b

for i in *5x_sorted.tab
do
  intersectBed \
  -wb \
  -a ${i} \
  -b MODIFIED.gene.gff \
  > ${i}_gene
done

```

Your file should now look like the example below:

```
000000F 24523   24525   20.000000       1       4       000000F maker   gene    24295   26964   .       +       .       ID=Pastreoides00003;Name=Pastreoides00003;Alias=maker-000000F-augustus-gene-0.47;
000000F 24539   24541   0.000000        0       6       000000F maker   gene    24295   26964   .       +       .       ID=Pastreoides00003;Name=Pastreoides00003;Alias=maker-000000F-augustus-gene-0.47;
000000F 24582   24584   0.000000        0       12      000000F maker   gene    24295   26964   .       +       .       ID=Pastreoides00003;Name=Pastreoides00003;Alias=maker-000000F-augustus-gene-0.47;
000000F 24588   24590   0.000000        0       11      000000F maker   gene    24295   26964   .       +       .       ID=Pastreoides00003;Name=Pastreoides00003;Alias=maker-000000F-augustus-gene-0.47;
000000F 24617   24619   0.000000        0       10      000000F maker   gene    24295   26964   .       +       .       ID=Pastreoides00003;Name=Pastreoides00003;Alias=maker-000000F-augustus-gene-0.47;
000000F 24619   24621   0.000000        0       10      000000F maker   gene    24295   26964   .       +       .       ID=Pastreoides00003;Name=Pastreoides00003;Alias=maker-000000F-augustus-gene-0.47;
```

## <a name="final_positions"></a> **Intersect with file to subset only those positions found in all samples**

Now we are using the `CpG.filt.all.samps.5x_sorted.bed` file we created 2 steps above to filter for the positions found in all samples for each annotated file at that specific coverage.

**Input File:**
* `*_5x_sorted.tab_gene`
* `CpG.filt.all.samps.5x_sorted.bed`

**Output File:**
* `*CpG_5x_enrichment.bed`


#### Script

`5x_intersect_final.sh`

```
#!/bin/bash
#SBATCH -t 500:00:00
#SBATCH --nodes=1 --ntasks-per-node=10
#SBATCH --mem=120GB
#SBATCH --account=putnamlab
#SBATCH --export=NONE
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=####insert mail address####
#SBATCH -D <PATH_TO_outdir>/cov_to_cyto
#SBATCH --exclusive

# load modules needed

module load BEDTools/2.27.1-foss-2018b

for i in *_5x_sorted.tab_gene
do
  intersectBed \
  -a ${i} \
  -b CpG.filt.all.samps.5x_sorted.bed \
  > ${i}_CpG_5x_enrichment.bed
done
```

All of your sample files now should have the same number of positions (i.e. lines). To double check this before exporting these bedfiles to your local computer, use `wc -l *5x_enrichment.bed`. All of your files should have the same number of lines like the example below:

```
103636 18-106_S163_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-118_S162_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-130_S172_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-142_S189_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-167_S166_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-190_S186_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-202_S188_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-227_S170_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-322_S180_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-358_S201_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-370_S171_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-406_S177_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-418_S196_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-454_S197_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 18-55_S190_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1029_S183_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1038_S184_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1053_S167_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1059_S175_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1093_S168_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1257_S205_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-1263_S173_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-562_S174_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-571_S194_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-661_S182_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-704_S169_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-728_S161_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-862_S200_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-924_S204_5x_sorted.tab_gene_CpG_5x_enrichment.bed
103636 L-933_S203_5x_sorted.tab_gene_CpG_5x_enrichment.bed
 3109080 total
```

#### Now we can export this locally and analyze in R.

*Link R scripts here.*
