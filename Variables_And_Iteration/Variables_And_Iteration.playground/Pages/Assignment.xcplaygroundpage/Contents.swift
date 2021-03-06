//: [Previous](@previous)
//: # Assignment
//: Return to the plans you made at the start of this course for an image that used elements of repetition.
//:
//: Mr. Gordon will be emailing this to you.
//:
//: Reproduce that image in code, below.
//:
//: Remember to commit and push your work often.
//:
//: ![commit_menu](commit_menu.png "Commit")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// No fill
canvas.drawShapesWithFill = false

//Loop to set horizantal position

for x in stride(from: 0, through: 500, by: 100) {
    canvas.lineColor = Color(hue: 0, saturation: 80, brightness: x / 10, alpha: 100)
    canvas.defaultLineWidth = x / 40
    
 canvas.drawLine(fromX: 0, fromY: 0, toX: x, toY: 500)
}

// Loop to set vertical position
for y in stride(from: 450, through: 0, by: -100) {
    
     canvas.defaultLineWidth = y / 40
    
    canvas.drawLine(fromX: 0, fromY: 0, toX: 500, toY: y)
}

for p in stride(from: 500, through: 0, by: -100) {
    canvas.lineColor = Color(hue: 0, saturation: 80, brightness: p / 10, alpha: 100)
    canvas.defaultLineWidth = p / 40
    
    canvas.drawLine(fromX: 500, fromY: 0, toX: p, toY: 500)
}

// Loop to set vertical position
for s in stride(from: 0, through: 0, by: 100) {
    
    canvas.defaultLineWidth = s / 40
    
    canvas.drawLine(fromX: 500, fromY: 0, toX: 500, toY: s)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
