# musculusColors
Blue whale inspired R color palette

The colors of our favorite whale species saved in R color palettes. Inspired by the images of the whales they study [GEMM lab](https://mmi.oregonstate.edu/gemm-lab) graduate students [Dawn Barlow](https://github.com/dawnbarlow) and [Clara Bird](https://github.com/cbirdferrer) have created this R color palette package.



The [`paletter`](http://www.milanor.net/blog/build-color-palette-from-image-with-paletter/) package was used to extract color from images and structure of code was inspired by the [`PNWColors`](https://github.com/jakelawlor/PNWColors) package.

Image Copyright GEMM Lab, Marine Mammal Institute, Oregon State University

## Install
```r
# dev version
library(devtools)
devtools::install_github("dawnbarlow/musculusColors")
```

## Running the package
```r
library(musculusColors)
names(Bm_palettes)
  [1] "Bmlunge"   "Bmsurface" "Bmpoop"
```

## Palettes

### Blue Whales (Balaenoptera musculus)

```r
musculus_palette("Bmlunge", n=50)
```
<img src="ReadMeFigures/Bmlung.jpg">

```r
musculus_palette("Bmsurface", n=100)
```
<img src="ReadMeFigures/">

```r
musculus_palette("Bmpoop")
```
<img src="ReadMeFigures/">

### Gray Whales (Eschrichtius robustus)
```r
ErFluke
```
<img src="ReadMeFigures/Er_flukes">

```r
ErWhale
```
<img src="ReadMeFigures/Er_whale">

```r
ErHead
```
<img src="ReadMeFigures/Er_submerged">

```r
ErMole
```
<img src="ReadMeFigures/Er_mole">

## Example Plots
