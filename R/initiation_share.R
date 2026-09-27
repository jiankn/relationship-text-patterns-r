#' Conversation initiation share
#'
#' Returns one participant's share of observed conversation starts. This is a
#' descriptive metric only; it does not infer relationship interest or intent.
#'
#' For an interactive companion, see
#' https://whathethinks.com/who-texts-first
#'
#' @param a Number of observed conversation starts by participant A.
#' @param b Number of observed conversation starts by participant B.
#' @return A numeric share between 0 and 1. Returns 0 for invalid or empty totals.
#' @export
initiation_share <- function(a, b) {
  if (length(a) != 1 || length(b) != 1 || is.na(a) || is.na(b) || a < 0 || b < 0 || (a + b) == 0) return(0)
  a / (a + b)
}
