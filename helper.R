#' Add an ID Column to a Data Frame
#' 
#' Adds an `id` column to a data frame, populated with IDs as character 
#' strings ranging from 1 to the number of rows.
#' 
add_id_col <- function(x) {
  if ("id" %in% names(x)) { 
    warning("Column 'id' already exists.")
    }
  x$id = as.integer(seq_len(nrow(x)))
  return(x)
}

#' Perform Ordinal Encoding to Vector
#'
#' Converts a vector into an ordinal representation of integers ranging from 1
#' to the number of factor levels.
#'
as.intfac <- function(x) {
  as.integer(as.factor(x))
}
