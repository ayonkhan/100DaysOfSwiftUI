import Cocoa

struct Car {
    let model: String
    let noOfSeats: Int
    private(set) var currentGear = 0 {
        didSet {
            print("Current Gear: \(currentGear)")
        }
    }
    
    mutating func shiftUp() {
        if currentGear < 10 {
            currentGear += 1
        } else {
            print("Unable to shift to a higher gear. You are already in the highest gear!")
        }
    }
    
    mutating func shiftDown() {
        if currentGear > 0 {
            currentGear -= 1
        } else {
            print("Unable to shift to a lower gear. You are currently in Neutral!")
        }
    }
}

var dreamCar = Car(model: "Impala", noOfSeats: 5)
print(dreamCar.model)
print(dreamCar.noOfSeats)
print(dreamCar.currentGear)

dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftDown()
dreamCar.shiftDown()
dreamCar.shiftDown()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftDown()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
dreamCar.shiftUp()
