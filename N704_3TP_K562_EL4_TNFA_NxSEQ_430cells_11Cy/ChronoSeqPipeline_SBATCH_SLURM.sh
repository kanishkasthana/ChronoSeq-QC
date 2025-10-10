#!/bin/bash
#SBATCH --job-name=NxSEQ11cy      # Job name	
#SBATCH --nodes=1                    # Run all processes on a single node	
#SBATCH --ntasks=1                   # Run a single task		
#SBATCH --cpus-per-task=20            # Number of CPU cores per task
#SBATCH --mem=70G                    # Job memory request
#SBATCH --time=200:00:00              # Time limit hrs:min:sec
#SBATCH --output=parallel_%j.log     # Standard output and error log

pwd; hostname; date
python /stg1/data2/kanishk/chrono-seq-tools/ChronoSeqPipelineNoCorrectionTimeTagChronoV5.py /stg1/data2/kanishk/BaseSpace_Data/PE100_Data/January2025ChronoSeqV5andV4_3Timepoint_TNFA_EL4_K562/N704_3TP_K562_EL4_TNFA_NxSEQ_430cells_11Cy_S3_L003_R1_001.fastq.gz /stg1/data2/kanishk/BaseSpace_Data/PE100_Data/January2025ChronoSeqV5andV4_3Timepoint_TNFA_EL4_K562/N704_3TP_K562_EL4_TNFA_NxSEQ_430cells_11Cy_S3_L003_R2_001.fastq.gz /stg1/data2/kanishk/kanishk2/mixedHumanMouse/PE100/January2025ChronoSeqV5andV4_3Timepoint_TNFA_EL4_K562/N704_3TP_K562_EL4_TNFA_NxSEQ_430cells_11Cy N704_3TP_K562_EL4_TNFA_NxSEQ_430cells_11Cy

date
