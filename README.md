# Music Genre Classification

Created a custom music genre classification dataset to mirror the GTZAN dataset. Used `chop.sh` to convert the audio files from either .flac or .mp3 to .wav then divide the audio files into 3 second segments.

`mgc.ipynb` is a notebook for the GTZAN dataset and `mgc_custom.ipynb` is for our custom dataset.

Inside the notebooks, extracted MFCC features from the audio files and trained CNN models with it to classify music genres. Tested the models and performed analysis and visualizations with the results.