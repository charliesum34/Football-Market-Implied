#market informed model...


###############


install.packages("randomForest")
library(randomForest)
library(dplyr)


data <- read.csv("ChampOdds2324.csv")


odds_data <- data %>%
  select(HomeTeam, AwayTeam, FTHG, FTAG, PSCH, PSD, PSCA, B365H, B365D, B365A)

odds_data <- odds_data %>%
  mutate(
    home_prob = 1 / PSCH,
    draw_prob = 1 / PSD,
    away_prob = 1 / PSCA
  ) %>%
  mutate(
    total_prob = home_prob + draw_prob + away_prob,
    home_prob = home_prob / total_prob,
    draw_prob = draw_prob / total_prob,
    away_prob = away_prob / total_prob
  )


market_strength <- odds_data %>%
  group_by(HomeTeam) %>%
  summarise(home_strength = mean(home_prob)) %>%
  full_join(
    odds_data %>%
      group_by(AwayTeam) %>%
      summarise(away_strength = mean(away_prob)),
    by = c("HomeTeam" = "AwayTeam")
  ) %>%
  rename(Team = HomeTeam)


market_strength <- market_strength %>%
  mutate(
    combined_strength = (home_strength + away_strength) / 2
  )
View(market_strength)









