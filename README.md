# Example directory for an fMRI project
This is just how I organize my project and is intended to serve as an example rather than strict guildelines. 

./behav_data: this is usually where I keep the behavioral data and stimuli timings (i.e., the output from your presentation script)

./BIDS: this is where the raw fmri data is. I use the BIDS format (https://bids.neuroimaging.io/index.html)

./derivatives: the preprocessed output of fMRIprep

./Scripts: I keep all the analysis scripts including preprocessing here. 

./results

./figures

# Preprocessing
I've included example scripts for running basic preprocessing on the CNIR cluster. You can find them in ./Scripts/0Preproc

1copy_and_organize.sh: this converts the dcm files in a temporarory directory (where you upload the raw files from the CNIR NAS) into nii. For T1 at 7T, there will be several files associated with T1. You should use the one with the UNI-DEN flag as it's the one with inhomogeneity correction. 


2Organize_data_general.ipynb: this organizes the various scans into BIDS format. You will need to make sure the scan order specified in the script matches what happened during your scan session. After this step, you should visually check all the data in the BIDS directory to make sure nothing looks weird (i.e., artifacts or distortion). I usually use FSL on the server (for accesing remoate desktop on the cluster: see [here](https://docs.google.com/document/d/13VL20SnqRp-_UihPHbsikBdFzNkZGJrk9-N6AiESoVc/edit?usp=sharing)). If there are runs that don't look right, you can remove those from the BIDS directory or double-check after preprocessing. 

3submit_fmriprep_w_reconall.pbs: this runs fmriprep on a given participant. It should be submitted as a computation job to the cluster. You can update the RAM and # of CPUs. 
```
qsub 3submit_fmriprep_w_reconall.pbs
```




