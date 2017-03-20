# ACF_modified_with_dataset

This repo contains home-made UAV dataset version Alpha with modified pdollar's Matlab toolbox for using it. 

## Dataset

unzip uav1-4.zip in a certain folder, name it *$dataset_root*. note that it doesn't matter how many folders are in the *$dataset_root*. since my changes for the toolbox is for this :>

## Code

#### acfTrain

replace the **acfTrain.m** in the original toolbox with one in this repo. It's mainly modified for finding gt and img recursely.

#### UAVtrain

this code refers to the acfTrainCal.m in the original toolbox. They are almost the same. One can freely change the para in **UAVdemo.m** for trainning. (Suffer from adjusting the para for a loooong time)
Simply run it with adjusting the path in this file to *$dataset_root*

#### UAVdemo

this code is for displaying the toy examples of the detector you trained. create a folder named *$test*, then thow several images in it. Then change the path in **UAVdemo.m** to *$test*, run it. 
