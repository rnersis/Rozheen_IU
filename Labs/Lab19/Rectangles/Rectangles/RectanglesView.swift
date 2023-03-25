//
//  RectanglesView.swift
//  Rectangles
//
//  Created by Rozheen Nersisyan Malhami on 3/24/23.
//

import UIKit

class RectanglesView: UIView {
    
    var myDrawingColor: UIColor = UIColor.brown{
        didSet{
            self.setNeedsDisplay()
        }
    }

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //let myFirstPath = UIBezierPath()
        //myFirstPath.addArc(withCenter: CGPoint(x: 30, y: 30), radius: 20, startAngle: 0, endAngle: 6.28, clockwise: true)
       // myFirstPath.stroke()
        
        
        let path = UIBezierPath()
        path.lineWidth = 2
        
        let drawingBounds = self.bounds
        
        var circleCenter = CGPoint()
        circleCenter.x = drawingBounds.origin.x + drawingBounds.size.width/2.0
        circleCenter.y = drawingBounds.origin.y + drawingBounds.size.height/2.0
        
        let theMinOfTheTwoSizes: CGFloat
        if (drawingBounds.size.width > drawingBounds.size.height) {
            theMinOfTheTwoSizes = drawingBounds.size.height
            
        } else { theMinOfTheTwoSizes = drawingBounds.size.width
        }
        
        // path.addArc(withCenter: circleCenter, radius: (theMinOfTheTwoSizes - path.lineWidth)/2.0, startAngle: CGFloat(0.0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
        for i in 0..<20 {
               let radius = (theMinOfTheTwoSizes - CGFloat(i) * 20.0 - path.lineWidth) / 2.0
               path.move(to: CGPoint(x: circleCenter.x + radius, y: circleCenter.y))
               path.addArc(withCenter: circleCenter, radius: radius, startAngle: 0.0, endAngle: CGFloat(Double.pi * 2), clockwise: true)
           }
           
   
        self.myDrawingColor.setStroke()
        path.stroke()
    }
    

}
// create a path that can be used for drawing:





