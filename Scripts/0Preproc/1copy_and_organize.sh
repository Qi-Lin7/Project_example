#!/usr/bin/env bash
# Specify the information about the session
date_header=20250908_QI_00022
ses_header=HEAD_CNIR_HAKWAN_SIN-LAB_20250908_120417_499000
# Specific the tmp directory where you'd like to store the files converted to nifti
tmp_top=/SINLAB/SIN/qi/qi/Closedloop/tmp

dcm2niix ${tmp_top}/${date_header}/${ses_header}/.
