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

![ChampImpliedNew](https://github.com/user-attachments/assets/cba3e6bf-0023-4044-855d-b8e1935151e3)


This throws up some interesting results. Pinnacle thought Leeds were the best team over the course of the season, yet they weren't one of the 3 promoted teams! The market still rated Boro as the 5th best side despite an eventual 8th place finish after being ravaged with injuries. You would suspect in Boro's case that this injury misfortune is not sustainable and they can accelerate into a comfortable playoff position in 24/25 with worse title-chasing depth in the league. 



