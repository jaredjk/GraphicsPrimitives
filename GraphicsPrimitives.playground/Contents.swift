import UIKit

// Create a Point struct that has two properties called "X" & "Y" both of which are Doubles
struct Point {
    var X: Double
    var Y: Double
}

var mypoints = Point(X:0, Y:0)
print(mypoints)

//Crate a Line struct that has a "Start" and "End" property both of type Point
struct Line {
    var Start : Point
    var End : Point
    func length () -> Double { // Function to return the Length of the created line as a Double
        let length: Double = sqrt((Start.X-End.X)*(Start.X-End.X)+(Start.Y-End.Y)*(Start.Y-End.Y)) //distance formula
        return length
    }
}
var lineA = Line(Start: Point(X:3,Y:0), End: Point(X:1, Y:0))
print(lineA.length())

struct Triangle {
    var points = [Point]()
}
var mytri = Triangle(points: [Point(X: 0, Y: 0), Point(X: 3, Y: 5), Point(X: 5, Y:3)])
print(mytri)

