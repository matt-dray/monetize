#' Increase Member Level if Enough Ads Have Been Watched
#' @return Nothing.
#' @noRd
.adjust_level <- function(user_data, thresholds = c(0, 10, 20)) {

  if (!inherits(user_data, "list")) {
    stop("user_data must be a list.", call. = FALSE)
  }

  if (!inherits(thresholds, "numeric")) {
    stop("thresholds must be a numeric vector.", call. = FALSE)
  }

  level_met <- as.numeric(max(which(user_data[["coin_total"]] >= thresholds)))
  .edit_user_data_value("member_level", level_met)

}
