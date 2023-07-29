#' Watch an Ad to Receive More MEGA COINS
#'
#' @param duration Character. Length of the ad, either 'short' or 'long'.
#'
#' @return Nothing.
#'
#' @export
#'
#' @examples \dontrun{watch_ad("long")}
watch_ad <- function(duration = c("short", "long")) {

  duration <- match.arg(duration)

  ad_reps <- switch(duration, short = 5, long = 10)
  coins_gained <- switch(duration, short = 1, long = 3)

  ad_text <- .sample_ads()

  while (ad_reps > 0) {
    message(ad_text)
    Sys.sleep(1)
    ad_reps <- ad_reps - 1
  }

  # Check/create/fetch user data
  has_user_data <- .check_for_user_data()
  if (!has_user_data) .create_user_data()
  user_data <- .fetch_user_data()

  # Update total coin amount
  coin_total_new <- user_data[["coin_total"]] + coins_gained
  .edit_user_data_value("coin_total", coin_total_new)

  # Update and report current coin balance
  coin_balance_new <- user_data[["coin_balance"]] + coins_gained
  .edit_user_data_value("coin_balance", coin_balance_new)
  message("Congratulations! Your new MEGA COIN total is ", coin_balance_new, "!")

}

#' Sample from a Range of Advertisements
#' @return Character.
#' @noRd
.sample_ads <- function(n = 1) {

  messages <- c(
    "🧃 IMBIBE ACME(TM)-BRAND FRUIT PULP (7% FEWER INSECT COMPONENTS)! 🪳",
    "🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕",
    "📟 COMMUNICATE IN CHIC MODERN STYLE WITH AN ACME(TM)-BRAND PAGER! 😎",
    "🫀 GRAFT A FRESHLY-HARVESTED ACME(TM)-BRAND VITAL ORGAN (2-FOR-1 ON LUNGS)! 🫁",
    "🧯 EXTINGUISH FIRES CAUSED BY ACME(TM)-BRAND PRODUCTS WITH AN ACME(TM)-BRAND EXTINGUISHER! 🔥"
  )

  sample(messages, n)

}
