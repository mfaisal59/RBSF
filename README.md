# RBSF
Real Background Synthetic Foreground (RBSF) Dataset for Video Object Segmentation

This is public repository of Dataset proposed in our WACV 2020 paper on Exploiting Geometric Constraints on Dense Trajectories for Motion Saliency.

### RBSF Dataset:
We created our own synthetic dataset, called RBSF (Real Background, Synthetic foreground), by overlaying the 20 different foreground objects performing various movements with 5 different real background videos. We downloaded both the foregrounds and backgrounds videos from YouTube and mixed them using Video Editing Tool. The dataset can be downloaded from [RBSF](https://github.com/mfaisal59/RBSF).

For more details about dataset, please visit our [project page](http://im.itu.edu.pk/video-object-segmentation/.

### Download Dataset

```
chmod +x download_dataset.sh
bash ./download_dataset.sh
```

#### BIBTEX:
If you use this dataset, please cite our paper:

```
@article{DBLP:journals/corr/abs-1909-13258,
  author    = {Muhammad Faisal and
               Ijaz Akhter and
               Mohsen Ali and
               Richard I. Hartley},
  title     = {Exploiting Geometric Constraints on Dense Trajectories for Motion
               Saliency},
  journal   = {CoRR},
  volume    = {abs/1909.13258},
  year      = {2019},
  url       = {http://arxiv.org/abs/1909.13258}
}
```