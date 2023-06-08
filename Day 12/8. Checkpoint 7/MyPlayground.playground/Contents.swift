import Cocoa

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Barking...")
    }
}

class Corgi: Dog {
    override func speak() {
        print("[Corgi] Barking...")
    }
}

class Poodle: Dog {
    override func speak() {
        print("[Poodle] Barking...")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meow...")
    }
}

class Persian: Cat {
    override func speak() {
        print("[Persian] Meowing...")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roaring...")
    }
}

var animal = Animal(legs: 4)
print(animal.legs)

var dog = Dog(legs: 4)
dog.speak()

var corgi = Corgi(legs: 4)
corgi.speak()

var poodle = Poodle(legs: 4)
poodle.speak()

var cat = Cat(legs: 4, isTame: false)
cat.speak()

var persian = Persian(legs: 4, isTame: false)
persian.speak()

var lion = Lion(legs: 4, isTame: true)
lion.speak()
