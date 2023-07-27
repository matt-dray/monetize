#' Add One to a Number
#'
#' @param number Numeric. A number to which one will be added. See details.
#'
#' @details
#' At Member Level 1, you'll get your supplied number plus 1. Except 20% of the
#' time it'll be wrong!
#'
#' At Member Level 2, the answer will always be correct!
#'
#' At Member Level 3, the answer will print in a colour of your choice!
#'
#' If you run out of MEGACOINS, simply [watch_ad]!
#'
#' @return Numeric.
#'
#' @export
#'
#' @examples \dontrun{add_one(1)}
add_one <- function(number) {

  is_number <- inherits(number, "numeric")
  if (!is_number) stop("Whoops! You must provide a numeric value!", call. = FALSE)

  # Check/create user data
  has_user_data <- .check_for_user_data()
  if (!has_user_data) .create_user_data()
  user_data <- .fetch_user_data()

  # Update and report trial days remaining

  time_diff <- as.numeric(difftime(Sys.Date(), user_data[["trial_start"]]))
  days_left_updated <- 30 - time_diff

  .edit_user_data("days_left", days_left_updated)

  if (days_left_updated <= 0) {
    stop(
      paste(
        "🛑 Uhoh! Your free trial ended! Mail me 500 units of your local",
        "currency and I'll reactivate the package for you!"
      ),
      call. = FALSE
    )
  }

  if (days_left_updated > 0) {
    message("📅 You have ", days_left_updated, " days left of your free trial!")
  }

  # Update and report trial days remaining, run function if allowed

  ad_balance_updated <- user_data[["ad_balance"]] - 1

  if (ad_balance_updated < 0) ad_balance_updated <- 0

  .edit_user_data("ad_balance", ad_balance_updated)

  if (user_data[["ad_balance"]] > 0) {

    message("💰 Your MEGACOIN balance is now ", ad_balance_updated, "!")

    # Calculate and return answer
    result <- number + 1
    offset <- sample(c(-1, 0, 1), 1, prob = c(0.1, 0.8, 0.1))
    result <- result + offset
    return(result)

  }

  if (ad_balance_updated == 0) {
    stop(
      "😭 Uhoh! You'll need more MEGACOINS to re-use this function! Try watch_ad().",
      call. = FALSE
    )
  }

}
