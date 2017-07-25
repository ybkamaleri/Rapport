## Omkoding variable med tekst
omkode <- function(DT, ord, var, new, tall) {
  DT[grepl(ord, get(var)), paste0(new) := tall]
}
