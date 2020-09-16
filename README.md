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
<img src="Images/Bmlung.jpg">

```r
musculus_palette("Bmsurface", n=100)
```
<img src="Images/">

```r
musculus_palette("Bmpoop")
```
<img src="Images/">

### Gray Whales (Eschrichtius robustus)
```r
ErFluke
```
<img src="Images/Er_flukes.jpg">

```r
ErWhale
```
<img src="Images/Er_whale.jpg">

```r
ErHead
```
<img src="Images/Er_submerged.JPG">

```r
ErMole
```
<img src="Images/Er_mole.jpg">

## Example Plots
