# musculusColors
Blue whale inspired R color palette, with some gray whales thrown in there :)

The colors of our favorite whale species saved in R color palettes. Inspired by the images of the whales they study [GEMM lab](https://mmi.oregonstate.edu/gemm-lab) graduate students [Dawn Barlow](https://github.com/dawnbarlow) and [Clara Bird](https://github.com/cbirdferrer) have created this R color palette package.



The [`paletter`](http://www.milanor.net/blog/build-color-palette-from-image-with-paletter/) package was used to extract color from images and structure of code was inspired by the [`PNWColors`](https://github.com/jakelawlor/PNWColors) package.

Image Copyright GEMM Lab, Marine Mammal Institute, Oregon State University.  
Gray whale images collected under NOAA/NMFS permit #16111 and #21678.  

**Table of Contents**
[Install](#Install)
[Running](#Running-the-package)
[Palettes](#Palettes)
[Example Plots](#Example-Plots)


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
  [1] "Bmlunge"   "Bmsurface" "Bmpoop"    "ErFluke"   "ErHead"    "ErMole"   
  [7] "ErWhale"
```

## Palettes

### Blue Whales (Balaenoptera musculus)

```r
musculus_palette("Bmlunge")
```
<img src="Images/Bm_lunge.jpg" width="500"/>

```r
musculus_palette("Bmsurface")
```
<img src="Images/Bm_surface.jpg/" width="500"/>

```r
musculus_palette("Bmpoop")
```
<img src="Images/Bmpoop.jpg/" width="500"/>

### Gray Whales (Eschrichtius robustus)
```r
musculus_palette("ErFluke")
```
<img src="Images/Er_flukes.jpg" width="500"/>

```r
musculus_palette("ErWhale")
```
<img src="Images/Er_whale.jpg" width="500"/>

```r
musculus_palette("ErHead")
```
<img src="Images/Er_submerged.JPG" width="500"/>

```r
musculus_palette("ErMole")
```
<img src="Images/Er_mole.jpg" width="500"/>

## Example Plots
```r
library(hexbin)
ggplot(data.frame(x = rnorm(1e4), y = rnorm(1e4)), aes(x = x, y = y)) +
  geom_hex() +
  coord_fixed() +
  scale_fill_gradientn(colours = musculus_palette("Bmlunge", n=50)) +
  theme_classic()
```
<img src="Images/Bmlunge_example.png" width="500"/>

```r
ggplot(diamonds, aes(carat, fill = cut)) +
  geom_density(position = "stack") +
  scale_fill_manual(values=musculus_palette("Bmsurface",5, type = "discrete"))  +
  theme_classic()
```
<img src="Images/Bmsurface_example.png" width="500"/>

```r
ggplot(diamonds, aes(x=cut, y=carat, fill = cut)) +
  geom_boxplot() +
  scale_fill_manual(values=musculus_palette("Bmpoop", 5))  +
  theme_classic()
```
<img src="Images/Bmpoop_example" width="500"/>

```r
ggplot(diamonds, aes(carat, fill = cut)) +
  geom_density(position = "stack") +
  scale_fill_manual(values=musculus_palette("ErFluke",5, type = "discrete"))  +
  theme_classic()
```
<img src="Images/ErFluke_ex.png" width="500"/>

```r
ggplot(diamonds, aes(x=cut, y=carat, fill = cut)) +
  geom_boxplot() +
  scale_fill_manual(values=musculus_palette("ErHead", 5))  +
  theme_classic()
```
<img src="Images/ErHead_ex.png" width="500"/>

```r
library(hexbin)
ggplot(data.frame(x = rnorm(1e4), y = rnorm(1e4)), aes(x = x, y = y)) +
  geom_hex() +
  coord_fixed() +
  scale_fill_gradientn(colours = rev(musculus_palette("ErMole", n=50))) +
  theme_classic()
```
<img src="Images/ErMole_ex.png" width="500"/>

```r
ggplot(diamonds, aes(depth, carat,fill = cut)) +
  geom_violin(trim=FALSE) +
  scale_fill_manual(values=musculus_palette("ErWhale", 5))  +
  theme_classic()
```
<img src="Images/ErWhale_ex.png" width="500"/>
