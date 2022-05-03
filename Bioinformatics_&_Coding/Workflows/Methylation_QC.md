# DNA methylation workflows: bioinformatic pipeline for quality control

Contents:   
- [**General lab resources**](#resources)   
- [**Laboratory method: Methyl-Binding Domain Bisulfite Sequencing (MBD-BS)**](#MBDBS)   

## <a name="resources"></a> **General lab resources**

- [Danielle Becker's methylseq presentation from 2021 lab meeting](https://docs.google.com/presentation/d/1qNMI2-LmyvqwNZ4J8FaHIg7d-niXm5jxEeeL1aobXeI/edit#slide=id.p4)  
- [K. Wong WGBS workflow with P. asteroides](https://github.com/kevinhwong1/Thermal_Transplant_Molecular/blob/main/scripts/Past_WGBS_Workflow.md)  
- [D. Becker WGBS workflow with P. verrucosa](https://github.com/hputnam/Becker_E5/blob/master/Bioinformatics/Workflows/Becker_WGBS_Workflow.md)     
- [E. Strand WGBS workflow with P.acuta](https://github.com/emmastrand/EmmaStrand_Notebook/blob/master/_posts/2021-10-21-HoloInt-WGBS-Analysis-Pipeline.md)  
- [E. Strand WGBS workflow with M. capitata](https://github.com/emmastrand/EmmaStrand_Notebook/blob/master/_posts/2021-10-21-KBay-Bleaching-Pairs-WGBS-Analysis-Pipeline.md)

## <a name="MBDBS"></a> **Laboratory method: Methyl-Binding Domain Bisulfite Sequencing (MBD-BS)**

We used MBD-BS for our 2022 lab meetings oyster methylation paper: [Cvir github page](https://github.com/hputnam/Cvir_Nut_Int); [laboratory protocol details post](https://github.com/hputnam/Cvir_Nut_Int#m-schedl-mbdbs-library-preps). Other methods include Whole Genome Bisulfite Sequencing (WGBS) and RRBS (Reduced Representation Bisulfite Sequencing), but see methods comparison paper [Trigg et a 2021](https://onlinelibrary.wiley.com/doi/pdf/10.1111/1755-0998.13542).

Because <20% of the genome is methylated for invertebrates and WGBS is costly, using a method that enriches for the methylated regions of the DNA prior to bisulfite sequencing can be beneficial.

#### 1. Enriching for highly methylated regions

We used the [Invitrogen Methylminer Methylated DNA Enrichment Kit](https://www.thermofisher.com/order/catalog/product/ME10025). For full protocol details, see [here](https://github.com/hputnam/Cvir_Nut_Int#enriching-for-highly-methylated-regions-with-dna-samples-of-eastern-oyster-from-rebecca-stevick-using-the-invitrogen-methylminer-methylated-dna-enrichment-kit). This kit uses the Methyl-binding domain protein to only capture methylated regions.

![](https://international.neb.com/-/media/nebus/page-images/products/epigenetics/e2600_figure-1.png?rev=3fb54a2c3cff4bb1a45ee07980b9ae4b&hash=833B1AAF16887F5CCE9D6881ABE67BDB)

#### 2. Bisulfite conversion

We used the [Zymo Pico Methyl Seq Kit](https://www.zymoresearch.com/products/pico-methyl-seq-library-prep-kit). For full protocol details, see [here](https://github.com/hputnam/Cvir_Nut_Int#using-the-zymo-pico-methyl-seq-kit-on-the-mbd-enriched-eastern-oyster-dna-from-samples-from-rebecca-stevick). Bisulfite conversion steps convert any *un-methylated* cytosine into a uracil that in later steps becomes a thymine. With these sequences, you can compare to a reference genome and calculate the % methylation based on how many C's match the reference genome and how many T's don't.

![](https://www.diagenode.com/img/categories/bisulfite-conversion/bisulfite-conversion-acgautac.png)
