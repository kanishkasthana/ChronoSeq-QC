#!/bin/bash
#SBATCH --job-name=3TPQC      # Job name	
#SBATCH --nodes=1                    # Run all processes on a single node	
#SBATCH --ntasks=1                   # Run a single task		
#SBATCH --cpus-per-task=5            # Number of CPU cores per task
#SBATCH --mem=40G                    # Job memory request
#SBATCH --time=200:00:00              # Time limit hrs:min:sec
#SBATCH --output=parallel_%j.log     # Standard output and error log

pwd; hostname; date

python /stg1/data2/kanishk/chrono-seq-tools/MakeMixedSpeciesPlot.py /stg1/data2/kanishk/kanishk2/mixedHumanMouse/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/SC_3TP_QC_K562_EL4/SC_3TP_QC_K562_EL4.aligned.sorted.merged.tagged.bam /stg1/data2/kanishk/kanishk2/mixedHumanMouse/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/SC_3TP_QC_K562_EL4/SC_3TP_QC_K562_EL4.aligned.sorted.merged.tagged.counts.txt.gz.top_barcodes.txt

date
