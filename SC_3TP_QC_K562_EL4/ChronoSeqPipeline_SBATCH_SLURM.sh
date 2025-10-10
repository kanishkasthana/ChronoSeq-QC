#!/bin/bash
#SBATCH --job-name=K562EL4QC      # Job name	
#SBATCH --nodes=1                    # Run all processes on a single node	
#SBATCH --ntasks=1                   # Run a single task		
#SBATCH --cpus-per-task=10            # Number of CPU cores per task
#SBATCH --mem=70G                    # Job memory request
#SBATCH --time=200:00:00              # Time limit hrs:min:sec
#SBATCH --output=parallel_%j.log     # Standard output and error log

pwd; hostname; date
python /stg1/data2/kanishk/chrono-seq-tools/ChronoSeqPipelineNoCorrectionTimeTag.py /stg1/data2/kanishk/BaseSpace_Data/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/SC_3TP_QC_K562_EL4_S2_L005_R1_001.fastq.gz /stg1/data2/kanishk/BaseSpace_Data/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/SC_3TP_QC_K562_EL4_S2_L005_R2_001.fastq.gz /stg1/data2/kanishk/kanishk2/mixedHumanMouse/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/SC_3TP_QC_K562_EL4 SC_3TP_QC_K562_EL4

date
