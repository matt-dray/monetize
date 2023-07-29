#' Decrement Trial Period Count and Message user
#' @return Nothing.
#' @noRd
.countdown_trial_period <- function(
    user_data,
    trial_length = 30,
    reactivate_cost = 500
) {

  if (!inherits(user_data, "list")) {
    stop("user_data must be a list.", call. = FALSE)
  }

  if (!inherits(trial_length, "numeric")) {
    stop("trial_length must be numeric", call. = FALSE)
  }

  if (!inherits(reactivate_cost, "numeric")) {
    stop("reactivate_cost must be numeric", call. = FALSE)
  }

  time_diff <- as.numeric(difftime(Sys.Date(), user_data[["trial_start"]]))
  days_left_new <- trial_length - time_diff

  .edit_user_data_value("days_left", days_left_new)

  if (days_left_new <= 0) {
    stop(
      paste(
        "🛑 Uhoh! Your FREE TRIAL ended! Mail me", reactivate_cost,
        "units of your local currency to reactivate the monetize(TM) package!"
      ),
      call. = FALSE
    )
  }

  if (days_left_new > 0) {
    message("📅 You have ", days_left_new, " days left of your FREE TRIAL!")
  }

}
