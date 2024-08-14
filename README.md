# ⚽ Championship Market-Implied Strength Model in R

This project aims to develop a market-implied strength model for predicting outcomes in football matches, specifically within the EFL Championship. The model leverages betting market data to calculate team strengths, which can be used to evaluate match probabilities and predict results.

## 🔍 Overview

The core objective of this project is to use historical betting odds to infer the relative strength of football teams within the EFL Championship. By analyzing the odds provided by bookmakers, the model estimates the perceived strength of each team, which is crucial for making informed predictions.

### Data Source

The model uses match data from the **2023/2024 Championship season**, including closing odds from **Pinnacle** and **Bet365**. This data includes match results, and betting odds are essential for calculating implied probabilities and market strength.

### How It Works

- **Implied Probabilities:** The model begins by converting the closing odds into implied probabilities for home wins, draws, and away wins.
- **Market Strength Calculation:** The average implied probabilities are used to calculate a market-implied strength for each team, which reflects the market's perception of a team's ability.
- **Combined Strength:** The model calculates a combined strength score by averaging home and away strengths, providing an overall measure of a team's market-implied power.

## 📊 Market-Implied Strength Rankings

As of the **2023/2024 Championship Season**, the current market-implied strength rankings for the teams are:

![championship_strength](https://github.com/user-attachments/assets/championship_strength_2024)

## 🔮 Predicted Match Outcomes

Using the calculated market strengths, the model can forecast the probabilities of upcoming matches in the Championship. Below are some example predictions for future fixtures:

![championship_predictions](https://github.com/user-attachments/assets/championship_predictions_2024)

## 🛠️ How to Run the Model

### Prerequisites

- **RStudio** with the following packages installed:
  - `dplyr`
  - `randomForest`

### Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/championship-market-implied-model.git
   cd championship-market-implied-model


