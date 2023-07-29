.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "Welcome to the monetize(TM) package FREE TRIAL version!\n",
    "Try our EXCLUSIVE add_one() function!\n",
    "Try watch_ad() to gain MEGA COINS and increase your MEMBER LEVEL for REWARDS!\n",
    "And now, a quick message from our sponsor:\n  ", .sample_ads(1)
  )
}
