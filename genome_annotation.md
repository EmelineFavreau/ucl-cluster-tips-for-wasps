# Post-assembly of genome
Notes from 2020 Arthropod Genomics Symposium (and my own tips)
Background reading: https://www.nature.com/articles/nrg3174 and https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1006682

## Structural genome annotation
Identifying genes structures (intron, exon)
- RepeatModeler, TransposonPSI and LTRharvest to identify different types of repeats in the genome

- RepeatMasker transforms repeats into "N" for coding-only annotation

- Augustus annotation

- Maker: using Augustus and Genemark to predict genes. Paper here: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4286374/. Example here:  https://github.com/guillemylla/Crickets_Genome_Annotation/tree/master/G_bimaculatus

- BRAKER: using Augustus and Genemark to predict genes

- someone used 4 programs to annotate: https://github.com/ATPs/MCuNovo/blob/master/example/20190623PestGenomes.ipynb

- Funannotate seems to be much quicker than Maker

- genevalidator is a tool to determine if a gene model is ok

- MiCure: annotating miRNAs in insects. Paper: https://www.nature.com/articles/srep37736. Tool: https://github.com/ConesaLab/MirCure

-  mirdeep2, trnascan, rfamscan for non-coding bit. Check github page of Sujai Kumar

- InsectOR: webserver to annotate olfactory receptor genes. Paper: https://www.biorxiv.org/content/10.1101/2020.04.29.067470v1. Tool: http://caps.ncbs.res.in/insectOR/

- RepeatClassifier: For annotation repeats and transposable elements

- TE classification is an open problem but identification has become better. Repbase has become subscription (https://www.girinst.org/accountservices/register.php?commercial=0) only and DFAM (https://academic.oup.com/nar/article/44/D1/D81/2503084) has a ways to go. We use RepeatModeler for basic annotation and REPET for more aggressive identification followed by lots of manual curation to reconstruct the families.

## Functional annotation

GO prediction tools
- CrowdGO uses output of other predictions tools and gives a consensus: presentation (https://bcc2020.sched.com/event/coKy/crowdgo-gene-ontology-prediction-using-a-meta-approach) and pre-print (https://www.biorxiv.org/content/10.1101/731596v2)

- KEGG enrichment: Limma's function kegga (http://web.mit.edu/~r/current/arch/i386_linux26/lib/R/library/limma/html/goana.html). More here: https://yulab-smu.github.io/clusterProfiler-book/chapter6.html. Also: spia, an R package. It requires kegg xml files which I downloaded from genome.jp/kegg-bin

## Other tools
- Gene Set Enrichment Analysis (GSEA): a computational method that determines whether an a priori defined set of genes shows statistically
significant, concordant differences between two biological states
(e.g. phenotypes). https://www.gsea-msigdb.org/gsea/index.jsp
