# Bulky Waste Classification From a Distance: Challenges and First Insights

This work investigates material classification on bulky waste.  
Therefore, a small-sized laboratory dataset is created, and deep learning models for pixel classification and patch segmentation are tested.

The paper will be referenced here when it's published.  

The data can be found on Zenodo.

## The Notebooks

### PatchSegmentationRGBMSI
Contains experiments to test material classification with the full multispectral setup and RGB data. 

### PixelClassification
Tests two pixel classifiers: one MLP and one that uses convolutions on the spectral feature space.

### PatchSegmentationSpectralSpatial
Tests a patch segmentation model that uses spectral and spatial convolutions (SpectrumUnet3D).

### SpectrumUNet3DLOOCV and SpectrumUNetLOOCV
Leave-one-out cross-validation for both networks.

## Build and Run Docker Environment

### Build Image

    ```docker build  -t <image name> -f Dockerfile .```

### Run
* Run a notebook server:

    ```docker run -it --rm --runtime=nvidia --gpus all -p 8888:8888 -v <path/to/repo and data>:/tf <image name>```

* Execute notebooks with nbconvert or papermill:

    ```docker run -it --rm --runtime=nvidia --gpus all -p 8888:8888 -v <path/to/repo and data>:/tf <image name> bash```
    
    ``` cd /tf ```

    ```jupyter nbconvert --to notebook --allow-errors --execute <notebook name>.ipynb --output <new notebook name>.ipynb```

    or

    ```papermill <notebook name>.ipynb <new notebook name>.ipynb```