
# {monetize}

<!-- badges: start -->
[![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![Blog
posts](https://img.shields.io/badge/rostrum.blog-black?style=flat&labelColor=00ff00&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODdhoACgAJEAAAAAAP%2F%2F%2FwAAAAAAACH5BAlkAAIALAAAAACgAKAAAAL%2FlI%2BpywgPY5u02hQzuLz7r0nfSBohVKbqdT7rS7UbTMNyjR93zoNtX9sBh7EfcSU8Kh3GJSnpVEKjnCkVaL0WT1pps2vJgr1cp3gMPufU6Cs7%2BG233zS6nByK2u%2FEPTLO1%2BWnMhi4BjhUaAhXtqS4aIOIJQmJpvhYqXVJmbm42dgZ%2BpkXWjqqUWrKOYGZioc60urat9ogOzsJ2nGLy3Oa0VtVy3AmUzy8wMuCrHBsTErMjCH9pytszfQMG40dRk34bcKpDZ0cLqDs3V3hTI5ie57OHj%2FuLsJdvnv%2BRL%2BObv8O3zYP8rbku3YwG0BW%2FRLmcjjPH8CA5vwxtIjj172K%2FwvhYRQITE67gc0mzgC5seRHS%2FUkmrwI8d%2FKMSNDotQGk%2BS0mWlaxjR5kqNOhUMN1Uy5s%2BNNFx5j3jlKUaVSoTapIvXks6i4iTmrStXKByrTpca6XtWxz0xWr0ntmY3ali1Wl3SnfpWLlqeghkDdxkrriG9fcvz0ahI8%2BFlhpyIRJ9YIdy5jso%2FBvh2bCXLlyVYjG3W82XJT0XNAhz4bkTNN06cx6zPshnXrxaQzv1TLNZg6u7Ry6zboN7Dv36Pd6blNvDhh3LyTEzXOPLjzu8uFN58u83oPoNg7K44Ovfvz6q%2FCi0%2FRuuz5w%2Blhr6%2FWvvZ7RvHxzn9Y3%2FP97fnt7%2F8%2F1J9%2B%2F2UUoIAD1lGgawf6kmBQ54mlHmVrkUedgQTWJV2F30mIoX8A%2FoScdxGKCOFxHVIYF4rj4aSchfSBxV2LG5I4oYsInsgihyAOp6GDve2oXXYZppijiCYCOeSKM%2FZYInioCWkekzUuSaSCiUw5opQ4Uqmkj3tt6WVeQTbZCZk0gnlZmIGYqSWS%2FhX0IYxYslmlmmFhmSadXaqCpoxZ1pkmn24%2BGSNZgYqCp596iilfT33qKOejtknaZqSD2hgMhIsuaKSiiXKamqVJMuohqFtdyiWpT5p6qqhRAsrqoZC%2BCdh6mn4aa6ezElrrg3PimiusuwoIJ6I81nmre4L%2Fjtrqq10WW9qxz%2F6qrLFjhlhpqb8Veiaqf3bHbba8SotduMhSq1ov5k4LJrQskdusiqoW6Su8UMobL73qAnsupcJO6m2e%2FO5pravjXuuvZAYTi%2B2%2FPS5La7sDz2vlZwlT%2FC3GsgK8cMX5pvqxne5GcnHIm96LqaMBe1oyyh7f2fK6GvsJ8cEdZxzyxpWcLHPONBccsbc89%2FrjzQLHTPSVSNt78lMTm%2Fy0y3Y6vTTCK5cZdc9S6wzJ0ExHTfXV3Rr9c7TpEjzsy5pNfeHZM6ctsmlHNor22EHT%2FXZ5q5Ztt83a6qp3ynWLy7B7IzuM0M1N833E2keL%2FZrb6MnNMuSJPv9NsuRbV062D9V6rnmyli%2FzOceYIx7s5IYnnbrjqWeOt8%2Bvwxf75rODs3rpt7t%2Bu%2Bqhsx4s773TdvrgkBQAADs%3D)](https://www.rostrum.blog/posts/2023-08-01-monetize/)
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
💰 Your MEGA COIN balance is now 2! Try watch_ad()!
[1] 2
```

At MEMBER LEVEL 1, we can't guarantee a correct result. You'll have to reach MEMBER LEVEL 2 for that.

``` r
add_one(1)
```
```
📅 You have 30 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 1! Try watch_ad()!
💰 Your MEGA COIN balance is now 1! Try watch_ad()!
[1] 3
```

If you run out of MEGA COINS you'll have to watch some ads to replenish them.

``` r
add_one(1)
```
```
📅 You have 30 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 1! Try watch_ad()!
Error: 😭 You'll need more MEGA COINS to re-use this function! Try watch_ad()!
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
Congratulations! Your new MEGA COIN total is 1!
```

Reach MEMBER LEVEL 2 after reaching 10 total MEGA COINS; MEMBER LEVEL 3 after 20 MEGA COINS.

What's so good about MEMBER LEVEL 3? Well, the answer is always correct... and comes with a free hat!

``` r
add_one(1)
```
```
📅 You have 29 days left of your FREE TRIAL!
🏅 Your MEMBER LEVEL is 3! Try watch_ad()!
💰 Your MEGA COIN balance is now 19! Try watch_ad()!
🎩 
 2 
```

What happens when the FREE TRIAL runs out? Better make the most of it.
