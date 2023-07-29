#' Add One to a Number
#'
#' @param number Numeric. A number to which one will be added. See details.
#'
#' @details
#' At MEMBER LEVEL 1, you'll receive the answer, but it'll be wrong 20% of the
#' time!
#'
#' At MEMBER LEVEL 2, the answer will always be correct!
#'
#' At MEMBER LEVEL 3, the answer will print correctly... with a hat!
#'
#' If you run out of MEGA COINS, simply [watch_ad]!
#'
#' @return Numeric.
#'
#' @export
#'
#' @examples \dontrun{add_one(1)}
add_one <- function(number) {

  is_number <- inherits(number, "numeric")
  if (!is_number) {
    stop("Whoops! You must provide a numeric value!", call. = FALSE)
  }

  # Check/create user data
  has_user_data <- .check_for_user_data()
  if (!has_user_data) .create_user_data()
  user_data <- .fetch_user_data()

  # Update and report trial days remaining
  .countdown_trial_period(user_data)

  # Update user level if enough ads watched
  .adjust_level(user_data)
  user_data <- .fetch_user_data()
  message(
    "🏅 Your MEMBER LEVEL is ", user_data[["member_level"]],
    "! Try watch_ad()!"
  )

  # Update ad balance, run function if allowed

  coin_balance_new <- user_data[["coin_balance"]] - 1
  if (coin_balance_new < 0) coin_balance_new <- 0
  .edit_user_data_value("coin_balance", coin_balance_new)

  if (user_data[["coin_balance"]] > 0) {

    message(
      "💰 Your MEGACOIN balance is now ", coin_balance_new,
      "! Try watch_ad()!"
    )

    # Calculate and return answer

    result <- number + 1

    if (user_data[["member_level"]] == 1) {
      offset <- sample(c(-1, 0, 1), 1, prob = c(0.1, 0.8, 0.1))
      result <- result + offset
    }

    if (user_data[["member_level"]] == 3) {
      hat <- sample(c("🧢", "👒", "🎩", "🎓",  "🪖", "⛑️"), 1)
      names(result) <- hat
    }

    return(result)

  }

  # Empty balance warning
  if (coin_balance_new == 0) {
    stop(
      "😭 You'll need more MEGACOINS to re-use this function! Try watch_ad()!",
      call. = FALSE
    )
  }

}
