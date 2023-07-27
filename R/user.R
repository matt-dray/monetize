#' Return User Data
#' @noRd
.fetch_user_data <- function() {

  has_user_data <- .check_for_user_data()
  user_data_path <- .get_user_data_path("file")

  if (has_user_data) {
    readRDS(user_data_path)
  }

}

#' Create User Data if it Doesn't Exist
#' @noRd
.create_user_data <- function() {

  has_user_data <- .check_for_user_data()

  if (!has_user_data) {

    user_data_path <- .get_user_data_path("file")
    user_data_dir <- .get_user_data_path("dir")

    user_data <- list(
      trial_start = packageDate("monetize"),
      days_left = 30,
      ad_balance = 5
    )

    dir.create(user_data_dir, recursive = TRUE)
    saveRDS(user_data, user_data_path)

  }

}

#' Delete User Data
#' @noRd
.delete_user_data <- function() {

  has_user_data <- .check_for_user_data()

  if (has_user_data) {
    user_data_dir <- .get_user_data_path("dir")
    unlink(user_data_dir, recursive = TRUE)
  }

}

#' Fetch the User Data Path
#' @noRd
.get_user_data_path <- function(type = c("dir", "file")) {
  path <- tools::R_user_dir("monetize", "data")
  if (type == "file") path <- file.path(path, "user.rds")
  return(path)
}

#' Update User Data Values
#' @noRd
.edit_user_data <- function(what, amount) {

  has_user_data <- .check_for_user_data()

  if (has_user_data) {
    user_data_path <- .get_user_data_path("file")
    user_data <- readRDS(user_data_path)
    user_data[[what]] <- amount
    saveRDS(user_data, user_data_path)
  }

}

#' Check if User Data Exists
#' @noRd
.check_for_user_data <- function() {
  user_data_path <- .get_user_data_path("file")
  file.exists(user_data_path)
}
