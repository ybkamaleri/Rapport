## Omkoding variable med tekst
omkode <- function(DT, ord, var, new, tall) {
  DT[grepl(ord, get(var)), paste0(new) := tall]
}

## Whitespace
for (j in names(data)) set(data, j = j, value = data[[trimws(j)]])
