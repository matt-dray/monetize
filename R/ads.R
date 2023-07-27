#' Watch an Ad to Receive More MEGACOINS
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

  if (duration == "short") { times <- 5; coins_gained <- 1 }
  if (duration == "long") { times <- 10; coins_gained <- 3 }

  ad_text <- .sample_ads()

  while (times > 0) {
    message(ad_text)
    Sys.sleep(1)
    times <- times - 1
  }

  # Check/create user data
  has_user_data <- .check_for_user_data()
  if (!has_user_data) .create_user_data()
  user_data <- .fetch_user_data()

  # Update and report current stats
  ad_balance_updated <- user_data[["ad_balance"]] + coins_gained
  .edit_user_data("ad_balance", ad_balance_updated)
  message("Congratulations! Your new MEGACOIN total is ", ad_balance_updated, "!")

}

#' Sample from a Range of Advertisements
#' @noRd
.sample_ads <- function(n = 1) {

  messages <- c(
    "🧃 IMBIBE ACME(TM)-BRAND FRUIT PULP (7% FEWER INSECT COMPONENTS)! 🪳",
    "🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕",
    "📟 COMMUNICATE IN CHIC MODERN STYLE WITH AN ACME(TM)-BRAND PAGER! 😎",
    "🫀 GRAFT A FRESHLY-HARVESTED ACME(TM)-BRAND VITAL ORGAN (2-FOR-1 ON LUNGS)! 🫁",
    "🧯 EXTINUISH FIRES CAUSED BY ACME(TM)-BRAND PRODUCTS WITH AN ACME(TM)-BRAND EXTINGUISHER! 🔥"
  )

  sample(messages, n)

}
