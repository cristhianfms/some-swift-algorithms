import Foundation

/**
 Exercise 3:
 Create a chocolate factory with classes. The main class will make chocolate bars of n ounces per bar (n is random). The bars can be dark, milk, or white chocolate. Each bar could also contain a golden ticket to visit the factory, but with a very low probability.
 */

enum ChocolateType {
    case dark, white, milk
}

struct ChocolateBar {
    let type: ChocolateType
    let hasGoldenTicket: Bool
    let ounces: Float
}

class ChocolateFactory {
    func CreateBar(chocolateType: ChocolateType) -> ChocolateBar {
        let ounces = Float.random(in: 1...10000)
        let randomNumber = Int.random(in: 0...9)
        let hasGoldenTicket = randomNumber == 0
        return ChocolateBar(type: chocolateType, hasGoldenTicket: hasGoldenTicket, ounces: ounces)
    }
}


let factory = ChocolateFactory()
factory.CreateBar(chocolateType: .dark)
factory.CreateBar(chocolateType: .milk)
factory.CreateBar(chocolateType: .white)

