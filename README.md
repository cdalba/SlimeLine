# SlimeLine
This pipeline aims to analyze raw metagenomic datasets for taxonomic and functional profiling of plasmodial slime molds, Myxomycetes. 

### Hardware
   • An x86-compatible platform that is compatible with the indicated operating system (OS) and softwares
   • At least 4GB of RAM, a keyboard, and sufficient disk space for output files
   • Administrative privileges which are necessary to install and run the programs listed. 
   
### Softwares Used (for Taxonomic Profiling)
   • Any version of Linux (or a Windows VM running Linux) compatible with the following softwares
   • MEGAHIT ver. 1.2.9 
   • EukRep ver. 0.6.7
   • CONCOCT ver. 1.1.0
   • Metaxa2 ver. 2.2.3 
   • Unix shell of choice (Bash is used for this pipeline)
   *** Some softwares have required dependencies that also need to be installed.

## Disclaimer: 
The scripts pertain to the assembly and taxonomic profiling portions of the pipeline. For functional profiling, the webservers of MetaGeneMark, GhostKOALA, and KEGG Mapper were utilized.

### Files Included:
   • Metagenome Assembly_MEGAHIT.sh
   • Sorting_EukRep.sh
   • Binning_Concoct.sh
   • Assembly-based Taxonomic Profiling_Metaxa2.sh
   • Reads-based Taxonomic Profiling_Metaxa2.sh
   • Metaxa2_TTT.sh
   
## If you use SlimeLine in your publication, kindly cite the authors,

Alba, C.D.O., Fahrenbach, S.U., Ong, J.D.P., Balolong, M.P., Pagoso, E.J.A. (2022). Taxonomic and Functional Profiling of Myxomycetes from Karst Forest Soils of Guiuan, Samar, Philippines. [unpublished]. 

Fahrenbach, S.U., Alba, C.D.O., Balolong, M.P., Pagoso, E.J.A. (2022). Creating a Publicly Accessible 18S rRNA Gene Database for the Taxonomic Classification of Bright and Dark-spored myxomycetes. [unpublished]. 


Multiple softwares were integrated in this pipeline. You may also cite, 

Alneberg, J., Bjarnason, B. S., de Bruijn, I., Schirmer, M., Quick, J., Ijaz, U. Z., ... & Quince, C. 
(2013). CONCOCT: clustering contigs on coverage and composition. arXiv preprint 
arXiv:1312.4038.

Andrews, S. (2010). FastQC:  A Quality Control Tool for High Throughput Sequence Data [Online]. Available online at: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/

Bengtsson‐Palme, J., Hartmann, M., Eriksson, K. M., Pal, C., Thorell, K., Larsson, D. G. J., & 
Nilsson, R. H. (2015). METAXA2: improved identification and taxonomic classification 
of small and large subunit rRNA in metagenomic data. Molecular ecology resources, 15(6), 1403-1414.

Bengtsson-Palme, J., Richardson, R. T., Meola, M., Wurzbacher, C., Tremblay, É. D., Thorell, 
K., ... & Nilsson, R. H. (2018). Metaxa2 Database Builder: enabling taxonomic 
identification from metagenomic or metabarcoding data using any genetic marker. 
Bioinformatics, 34(23), 4027-4033.

Bolger, A. M., Lohse, M., & Usadel, B. (2014). Trimmomatic: A flexible trimmer for Illumina Sequence Data. Bioinformatics, btu170.

Edgar, R. C. (2010). Usearch. Lawrence Berkeley National Lab.(LBNL), Berkeley, CA (United States).

Kanehisa, M., Sato, Y., & Morishima, K. (2016). BlastKOALA and GhostKOALA: KEGG tools for functional characterization of genome and metagenome sequences. Journal of molecular biology, 428(4), 726-731.

Kanehisa, M. (2002). The KEGG database. In Novartis Kanehisa, M., & Sato, Y. (2020). KEGG Mapper for inferring cellular functions from protein 
sequences. Protein Science, 29(1), 28-35.

Li, D., Liu, C. M., Luo, R., Sadakane, K., & Lam, T. W. (2015). MEGAHIT: an ultra-fast 
single-node solution for large and complex metagenomics assembly via succinct de 
Bruijn graph. Bioinformatics, 31(10), 1674-1676.

West, P. T., Probst, A. J., Grigoriev, I. V., Thomas, B. C., & Banfield, J. F. (2018). 
Genome-reconstruction for eukaryotes from complex natural microbial communities. 
Genome research, 28(4), 569-580.

Zhu, W., Lomsadze, A., & Borodovsky, M. (2010). Ab initio gene identification in metagenomic sequences. Nucleic acids research, 38(12), e132-e132.

### ©2022, C.D.O. Alba & S.U. Fahrenbach
