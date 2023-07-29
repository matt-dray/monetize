
# {monetize}

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
<!-- badges: end -->

Are you sick of giving away your package's functions for free? Don't be a chump, take inspiration from the {monetize} package for ideas to incentivise users to PAY THEIR DUES. 

To install:

``` r
install.packages("remotes")  # if not yet installed
remotes::install_github("matt-dray/monetize")
library(monetize)
```
```
Welcome to the monetize(TM) package FREE TRIAL version!
Try our EXCLUSIVE add_one() function!
Try watch_ad() to gain MEGA COINS and increase your MEMBER LEVEL for REWARDS!
And now a quick message from our sponsor:
  🧃 IMBIBE ACME(TM)-BRAND FRUIT PULP (7% FEWER INSECT COMPONENTS)! 🪳
```

The package contains the exclusive `add_one()` function. Using it costs 1 MEGA COIN of the 3 that have been gifted to you as a NEW-MEMBER PERK.

``` r
add_one(1)
```
```
📅 You have 30 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 1! Try watch_ad()!
💰 Your MEGACOIN balance is now 2! Try watch_ad()!
[1] 2
```

At MEMBER LEVEL 1, we can't guarantee a correct result. You'll have to reach MEMBER LEVEL 2 for that.

``` r
add_one(1)
```
```
📅 You have 30 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 1! Try watch_ad()!
💰 Your MEGACOIN balance is now 1! Try watch_ad()!
[1] 3
```

If you run out of MEGA COINS you'll have to watch some ads to replenish them.

``` r
add_one(1)
```
```
📅 You have 30 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 1! Try watch_ad()!
Error: 😭 You'll need more MEGACOINS to re-use this function! Try watch_ad()!
```

Watch a `"short'` ad for 1 MEGA COIN or a `"long"` ad for 3 MEGA COINS.

``` r
watch_ad("short")
```
```
🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕
🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕
🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕
🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕
🌭 CONSUME ACME(TM)-BRAND RECONSTITUTED MEAT-LIKE CYLINDERS! 🐕
Congratulations! Your new MEGACOIN total is 1!
```

Reach MEMBER LEVEL 2 after reaching 10 total MEGA COINS; MEMBER LEVEL 3 after 20 MEGA COINS.

What's so good about MEMBER LEVEL 3? Well, the answer is always correct... and comes with a free hat!

``` r
add_one(1)
```
```
📅 You have 29 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 3! Try watch_ad()!
💰 Your MEGACOIN balance is now 19! Try watch_ad()!
🎩 
 2 
```

What happens when the FREE TRIAL runs out? Better make the most of it.
