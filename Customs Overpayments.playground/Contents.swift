import UIKit

///Limit for Russia in $. For actual limit check Spotlight with "1000 euro".
let limit: Double = 1185

///Items Prices in $. Change this with your item's price
let itemsPrices: [Double] = [2099]

// Don't touch this

var allItemsPrice: Double {
    guard itemsPrices.count != 0 else {
        return 0
    }
    var sum: Double = 0
    itemsPrices.forEach({item in
        sum += item
    })
    return sum
}

if limit >= allItemsPrice {
    print("No overpayments.")
} else {
    var overpayment: Double {
        return (allItemsPrice - limit) * 0.36
    }
    print("Overpayment is: $\(overpayment).")
    print("You will pay $\(allItemsPrice + overpayment) for your parcel.")
}
