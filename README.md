# Anime4K batch docker image

To batch upscale run

```shell
> docker run -v /indir:/in -v /outdir:/out infanf/anime4k
```
make sure that the indir only contains images. Working on this issue.