import Cocoa

var cities: [String] = ["Regina", "Calgary", "Vancouver", "Edmonton", "Victoria", "Toronto", "Quebec City", "Vancouver", "Montreal", "Calgary", "Victoria", "Ottawa", "Montreal"]
print(cities.count)
var uniqueCities: Set<String> = Set(cities)
print(uniqueCities.count)
