#!/bin/bash
#SBATCH --job-name=N702_DGE      # Job name	
#SBATCH --nodes=1                    # Run all processes on a single node	
#SBATCH --ntasks=1                   # Run a single task		
#SBATCH --cpus-per-task=5            # Number of CPU cores per task
#SBATCH --mem=40G                    # Job memory request
#SBATCH --time=200:00:00              # Time limit hrs:min:sec
#SBATCH --output=parallel_%j.log     # Standard output and error log

pwd; hostname; date

python /stg1/data2/kanishk/chrono-seq-tools/MakeMixedSpeciesPlot.py /stg1/data2/kanishk/kanishk2/mixedHumanMouse/PE100/January2025ChronoSeqV5andV4_3Timepoint_TNFA_EL4_K562/N702_3TP_K562_EL4_TNFA_NxSEQ_215cells_14Cy/N702_3TP_K562_EL4_TNFA_NxSEQ_215cells_14Cy.aligned.sorted.merged.tagged.bam /stg1/data2/kanishk/kanishk2/mixedHumanMouse/PE100/January2025ChronoSeqV5andV4_3Timepoint_TNFA_EL4_K562/N702_3TP_K562_EL4_TNFA_NxSEQ_215cells_14Cy/N702_3TP_K562_EL4_TNFA_NxSEQ_215cells_14Cy.aligned.sorted.merged.tagged.counts.txt.gz.top_barcodes.txt

date
