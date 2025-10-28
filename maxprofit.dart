/// stocks price
List<int> stocks = [7, 1, 5, 3, 6, 4];
List<int> anotherStocks = [5, 10, 1, 2, 4, 5, 1111, 222, 333, 50, 112];

String maxProfit(List<int> items) {
  int buy = items[0];
  int profit = 0;
  for (int i = 0; i < items.length; i++) {
    /// if stock price today less then current price buy;
    if (items[i] < buy) {
      /// buy the cheap price
      buy = items[i];

      /// if stock price today greater than profit
    } else if (items[i] - buy > profit) {
      /// sell and get the profit
      profit = items[i] - buy;
    }
  }

  return "Maximum Profit: ${profit}";
}

void main() {
  print(maxProfit(stocks));
  print(maxProfit(anotherStocks));
}
