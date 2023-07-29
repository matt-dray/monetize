#' Return User Data if it Exists
#' @return A list.
#' @noRd
.fetch_user_data <- function() {

  has_user_data <- .check_for_user_data()

  if (!has_user_data) {
    stop("User data doesn't exist", call. = FALSE)
  }

  if (has_user_data) {
    user_data_path <- .get_user_data_path(type = "file")
    readRDS(user_data_path)
  }

}

#' Check if a User-Data File Exists
#' @return: Logical.
#' @noRd
.check_for_user_data <- function() {
  user_data_path <- .get_user_data_path("file")
  file.exists(user_data_path)
}

#' Fetch the User Data Path
#' @return Character.
#' @noRd
.get_user_data_path <- function(type = c("dir", "file")) {

  type <- match.arg(type)

  path <- tools::R_user_dir("monetize", "data")

  if (type == "file") {
    path <- file.path(path, "user.rds")
  }

  path

}

#' Create User Data if it Doesn't Exist
#' @return Nothing.
#' @noRd
.create_user_data <- function() {

  has_user_data <- .check_for_user_data()

  if (!has_user_data) {

    user_data_dir  <- .get_user_data_path(type = "dir")
    user_data_path <- .get_user_data_path(type = "file")

    user_data_init <- .init_user_data()

    dir.create(user_data_dir, recursive = TRUE)
    saveRDS(user_data_init, user_data_path)

  }

}

#' Generate Initial Parameters for User Data
#' @return A list.
#' @noRd
.init_user_data <- function(days_left_init = 30, coin_balance_init = 3) {
  list(
    trial_start  = utils::packageDate("monetize"),
    days_left    = days_left_init,
    coin_balance = coin_balance_init,
    coin_total   = coin_balance_init,
    member_level = 1
  )
}

#' Delete User Data
#' @return Nothing.
#' @noRd
.delete_user_data <- function() {

  has_user_data <- .check_for_user_data()

  if (has_user_data) {
    user_data_dir <- .get_user_data_path("dir")
    unlink(user_data_dir, recursive = TRUE)
  }

}

#' Update User Data Values
#' @return Nothing.
#' @noRd
.edit_user_data_value <- function(
    parameter = c(
      "trial_start",
      "days_left",
      "coin_balance",
      "coin_total",
      "member_level"
    ),
    new_amount
) {

  parameter <- match.arg(parameter)

  if (!inherits(new_amount, "numeric")) {
    stop("Argument new_amount must be class numeric.", call. = FALSE)
  }

  has_user_data <- .check_for_user_data()

  if (has_user_data) {
    user_data_path <- .get_user_data_path("file")
    user_data <- readRDS(user_data_path)
    user_data[[parameter]] <- new_amount
    saveRDS(user_data, user_data_path)
  }

}


