import Cocoa

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var estateAgentName: String { get }
    func salesSummary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgentName: String
    
    func salesSummary() {
        print("House :: Rooms: \(rooms); Cost: \(cost); Estate Agent Name: \(estateAgentName)")
    }
}

struct Office: Building {
    var rooms: Int
    
    var cost: Int
    
    var estateAgentName: String
    
    func salesSummary() {
        print("Office :: Rooms: \(rooms); Cost: \(cost); Estate Agent Name: \(estateAgentName)")
    }
}

var house = House(rooms: 3, cost: 100_000, estateAgentName: "Taylor Swift")
house.salesSummary()
var office = Office(rooms: 8, cost: 300_000, estateAgentName: "Ellie Goulding")
office.salesSummary()
