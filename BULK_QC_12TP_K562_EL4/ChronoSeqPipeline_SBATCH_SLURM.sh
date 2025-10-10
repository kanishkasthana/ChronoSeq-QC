#!/bin/bash
#SBATCH --job-name=BULK_QC      # Job name	
#SBATCH --nodes=1                    # Run all processes on a single node	
#SBATCH --ntasks=1                   # Run a single task		
#SBATCH --cpus-per-task=10            # Number of CPU cores per task
#SBATCH --mem=70G                    # Job memory request
#SBATCH --time=200:00:00              # Time limit hrs:min:sec
#SBATCH --output=parallel_%j.log     # Standard output and error log
#SBATCH --partition=gpu              # Using gpu partition
#SBATCH --gres=gpu:1                     
#SBATCH --nodelist=gpu-1
pwd; hostname; date
python /stg1/data2/kanishk/chrono-seq-tools/ChronoSeqPipelineNoCorrectionTimeTag.py /stg1/data2/kanishk/BaseSpace_Data/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/BULK_QC_12TP_K562_EL4_S1_L005_R1_001.fastq.gz /stg1/data2/kanishk/BaseSpace_Data/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/BULK_QC_12TP_K562_EL4_S1_L005_R2_001.fastq.gz /stg1/data2/kanishk/kanishk2/mixedHumanMouse/July_2024_QC_3Timepoint_SC_ChronoSeqV4_Pilot_PBMC_K562/BULK_QC_12TP_K562_EL4 BULK_QC_12TP_K562_EL4 

date
