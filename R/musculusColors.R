
# 1.Create the color palettes
#::::::::::::::::::::::::::::::::::::::::::::::
#' Complete list of palettes
#'
#' Use \code{names(Bm_palettes)} to view list of palette names.
#' Currently:  Bmlunge, Bmsurface,  Bmpoop.
#'
#' @export
#'
Bm_palettes <- list(
  Bmlunge = rbind(c("#D6EBEC", "#7AD8DF", "#51D2DA", "#34AAB6", "#3D7688", "#306F83"), c(1,2,3,4,5,6)),
  Bmsurface  = rbind(c("#F0F2F8", "#D2DCF0", "#A0B7D8", "#7696BE", "#606A81", "#384157"), c(1,2,3,4,5,6)),
  Bmpoop = rbind(c("#F7C8A4", "#C1A59D", "#979A9B", "#7795A2", "#497889"), c(1,2,3,4,5))

)

# The following functions were created based on the PNWcolors package (https://github.com/jakelawlor/PNWColors/blob/master/README.md)

# 2. Palette builder function
#::::::::::::::::::::::::::::::::::::::::::::::
#' PNW Palette Generator.
#'
#'
#' @param name Name of the color palette. Options are \code{Bmlunge}, \code{Bmsurface}, \code{Bmpoop}
#' @param n Number of colors in the palette. Palletes include 5-6 colors, which can be used discretely,
#' or if more are desired, used as a gradient. If omitted, n = length of palette.
#' @param type Usage of palette as "continuous" or "discrete". Continuous usage interpolates between colors to create
#' a scale of values. If omitted, function assumes continuous if n > length of palette, and discrete if n < length of palette.
#'
#' @return A vector of colors.
#'
#' @examples
#' musculus_palette("Bmurface",n=100,type="continuous")
#' musculus_palette("Bmpoop",5)
#' musculus_palette("Bmlunge",50)
#'
#' @export

musculus_palette <- function(name, n, type = c("discrete", "continuous")) {

  pal <- Bm_palettes[[name]]


  if (is.null(pal)){
    stop("Palette not found.")
  }

  if (missing(n)) {
    n <- length(pal[1,])
  }

  if (missing(type)) {
    if(n > length(pal[1,])){type <- "continuous"}
    else{ type <- "discrete"}
  }
  type <- match.arg(type)


  if (type == "discrete" && n > length(pal[1,])) {
    stop("Number of requested colors greater than what discrete palette can offer, \n  use as continuous instead.")
  }


  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal[1,])(n),
                discrete = pal[1,][pal[2,] %in% c(1:n)],
  )
  structure(out, class = "Bmpalette", name = name)

}

#' @export



# 3. Palette Print Function
#::::::::::::::::::::::::::::::::::::::::
#' @importFrom graphics rect par image text
#' @importFrom stats median
print.Bmpalette <- function(x, ...) {
  pallength <- length(x)
  Bmpar <- par(mar=c(0.25,0.25,0.25,0.25))
  on.exit(par(Bmpar))

  image(1:pallength, 1,
        as.matrix(1:pallength),
        col = x,
        axes=FALSE)

  text(median(1:pallength), 1,
       labels = paste0(attr(x,"name"),", n=",pallength),
       cex = 3, family = "sans")
}


