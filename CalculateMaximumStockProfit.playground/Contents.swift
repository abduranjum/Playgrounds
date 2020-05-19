func getMaximumProfit(from stockPricesPerMinute: [Int]) -> Int {
    
    let stockPricesPerMinuteCount = stockPricesPerMinute.count
    
    guard stockPricesPerMinuteCount > 1 else {
        return 0
    }
    
    var maximumProfit = stockPricesPerMinute[0] - stockPricesPerMinute[1]
    
    for buyIndex in 0...stockPricesPerMinuteCount-2 {
        for sellIndex in buyIndex...stockPricesPerMinuteCount-1 {
            maximumProfit = max(maximumProfit, stockPricesPerMinute[sellIndex]-stockPricesPerMinute[buyIndex])
        }
    }
    
    return maximumProfit
}

let stockPrices = [10, 7, 5, 8, 11, 9]

let maximumProfit = getMaximumProfit(from: stockPrices)

print(maximumProfit)
// returns 6 (buying for $5 and selling for $11)
