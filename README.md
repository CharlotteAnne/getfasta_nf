# LuscombeU_Nextflow_Pipeline_Template
A template for creating Nextflow pipelines from scratch.

## Workspace set-up
### Laptop
- Install Docker Desktop and make sure it's running
- Mamba/conda environment with nextflow and nf-core tools, eg.
```
mamba create --name nf python=3.8 nf-core nextflow
mamba activate nf

nextflow run main.nf -profile docker,test
```

### Deigo HPC
Load appropriate modules:
```
ml singularity/3.5.2
ml bioinfo-ugrp-modules Nextflow2 nf-core

nextflow run main.nf -profile oist,test
```
