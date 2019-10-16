# Anime4K batch docker image

To batch upscale run

```shell
> docker run -v /indir:/in -v /outdir:/out infanf/anime4k
```

the container automatically upscale all PNGs in your `/indir` and put them in your `/outdir`.