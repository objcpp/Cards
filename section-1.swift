import Cocoa

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func description() -> String {
       switch self {
         case .Ace:
            return "Ace"
         case .Jack:
            return "Jack"
         case .Queen:
            return "Queen"
         case .King:
            return "King"
         default:
           return String(self.toRaw())
       }
    }
    
    func shortDescription() -> String {
        var sd:  String = ""
        
        sd = (self.description() as NSString).substringToIndex(1)
        return sd
    }
}

enum Suit: Int {
    case Spades, Clubs, Hearts, Diamonds, Clovers
    
    func description() -> String {
        switch self {
          case .Spades:    return "Spades"
          case .Clubs:     return "Clubs"
          case .Hearts:    return "Hearts"
          case .Diamonds:  return "Diamonds"
          case .Clovers:   return "Clovers"
          default:         return ""
        }
    }
    
    func shortDescription() -> String {
        var sd: String

        sd = (self.description() as NSString).substringToIndex(1)
        return sd
    }
    
    func picDescription() -> String {
        switch self {
          case .Spades:   return "♠️"
          case .Clubs:    return "♣️"
          case .Hearts:   return "♥️"
          case .Diamonds: return "♦️"
          case .Clovers:  return "🍀"
          default: return ""
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades, .Clubs: return "Black"
        case .Hearts, .Diamonds: return "Red"
        case .Clovers: return "Green"
        default: "Unknown"
        }
    }
}

struct Card {
    let rank: Rank
    let suit: Suit

    func shortDescription() -> String {
        var ret: String = ""
        let r: String = rank.shortDescription()
        let s: String = suit.shortDescription()
        
        ret = r + s
        return ret
    }
    
    func description() -> String {
        return rank.description() + " of " + suit.description()
    }
    
    func picDescription() -> String {
        return rank.shortDescription() + suit.picDescription()
    }
}

let myCard = Card(rank: .Ace, suit: .Diamonds)
myCard.shortDescription()
myCard.description()
myCard.picDescription()















