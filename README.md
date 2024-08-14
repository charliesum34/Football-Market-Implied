# ⚽ Championship Market-Implied Betting Model in R

This projects aims to utilise pinnacle's closing lines to accurately gage how the markets rate teams throughout a season. By tracking these markets we can make ratings ratings to infer if finishing positions were deserved and how they could inform good bets for the following season. 


### Data Source

The model uses match data from the **2023/2024 Championship season**, from https://football-data.co.uk/ . Not only do they track the results of games they also keep track of some really important metrics like opening/closing prices on a variety of markets for all major bookmakers including Bet365 and Pinnacle, which my model utilises.

### How It Works

- **Implied Probabilities:** The model begins by converting the closing odds into implied probabilities for home wins, draws, and away wins.
- **Market Strength Calculation:** The average implied probabilities are used to calculate a market-implied strength for each team, which reflects the market's perception of a team's ability.
- **Combined Strength:** The model calculates a combined strength score by averaging home and away strengths, providing an overall measure of a team's market-implied power.

## 📊 Market-Implied Strength Rankings

For the **2023/2024 Championship Season**, the current market-implied strength rankings for the teams were:

![championship_strength](C:\Users\Cgh\Pictures\ChampImpliedRatings.PNG)



