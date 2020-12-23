# Variational embedings

Forked from https://github.com/pbloem/embed


Implementation of basic KG embedding method DistMult with the option to do variational sampling on the latent space and learn with bayesian inference.

## Running

To run the DistMult LP with the optimal parameters presented in [[1]](#1) on the FB15k-237 dataset.
```bash
python experiments/lp_distmult_fb.py
```
To run the same experiment with variational sampling.
```bash
python experiments/lp_distmult_fb.py --vae
```

## References
<a id="1">[1]</a> 
@article{winstead2013you,
  title={You can teach an old dog new tricks: A qualitative analysis of how residents of senior living communities may use the web to overcome spatial and social barriers},
  author={Winstead, Vicki and Anderson, William A and Yost, Elizabeth A and Cotten, Shelia R and Warr, Amanda and Berkowsky, Ronald W},
  journal={Journal of Applied Gerontology},
  volume={32},
  number={5},
  pages={540--560},
  year={2013},
  publisher={Sage Publications Sage CA: Los Angeles, CA}
}