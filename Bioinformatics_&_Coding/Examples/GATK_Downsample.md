modules
all/GATK/4.1.0.0-foss-2018b-Python-3.6.6
bio/GATK/4.1.0.0-foss-2018b-Python-3.6.6
GATK/4.1.0.0-foss-2018b-Python-3.6.6

[GATK Downsample Blog](https://gatk.broadinstitute.org/hc/en-us/articles/360047717551-Downsampling-in-GATK)

[GATK Downsample Code](https://gatk.broadinstitute.org/hc/en-us/articles/360036360072-DownsampleSam-Picard-)


mkdir /data/putnamlab/example_scripts

Usage examples:

```
Downsample file, keeping about 10% of the reads
java -jar picard.jar DownsampleSam \ I=input.bam \ O=downsampled.bam \ P=0.2

Downsample file, keeping about 2% of the reads
java -jar picard.jar DownsampleSam \ I=input.bam \ O=downsampled.bam \ STRATEGY=Chained \ P=0.02 \ ACCURACY=0.0001

Downsample file, keeping about 0.001% of the reads (may require more memory)
java -jar picard.jar DownsampleSam \ I=input.bam \ O=downsampled.bam \ STRATEGY=HighAccuracy \ P=0.00001 \ ACCURACY=0.0000001
```

# code for downsampling
```
nano /data/putnamlab/shared/example_scripts/downsample.sh
```

```
#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH --nodes=1 --ntasks-per-node=1
#SBATCH --export=NONE
#SBATCH --mem=100GB
#SBATCH --account=putnamlab
#SBATCH -D /data/putnamlab/shared/example_bam

module load GATK/4.1.0.0-foss-2018b-Python-3.6.6
module load SAMtools/1.12-GCC-10.2.0

#count reads in the original file
echo "original bam read number" 
samtools view -c 1041.bam

java -jar picard.jar DownsampleSam \ I=1041.bam \ O=1041.downsampled.bam \ P=0.2

#count reads in the downsampled file
echo "downsampled bam read number" 
samtools view -c 1041.downsampled.bam

```

```
sbatch /data/putnamlab/shared/example_scripts/downsample.sh
```

