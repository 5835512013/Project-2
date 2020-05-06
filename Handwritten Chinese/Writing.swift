//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class Writing: UIView {
    // Properties for line drawing
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!
    var lastPoint:CGPoint!
    var pointColor:UIColor!
    var lineCap:CAShapeLayerLineCap!
    var c1 = CGRect(x: 29,y: 228,width: 100,height: 100)
    var c2 = CGRect(x: 332,y: 228,width: 100,height: 100)
    
    override func layoutSubviews() {
        self.clipsToBounds = true // no lines should be visible outside of the view
        self.isMultipleTouchEnabled = false // we only process one touch at a time
        
        // standard settings for our line
        lineColor = UIColor.black
        lineWidth = 30
        pointColor = UIColor.gray
        
        self.contentMode = .scaleToFill
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // get the touch position when user starts drawing
        let touch = touches.first
        startingPoint = touch?.location(in: self)
        
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // get the next touch point as the user draws
        let touch = touches.first
        touchPoint = touch?.location(in: self)

        // create path originating from the starting point to the next point the user reached
        path = UIBezierPath()
        path.move(to: startingPoint)
        path.addLine(to: touchPoint)
        
        
        func DETone(){
        if c2.contains(touchPoint){
            AlertView.instance.showAlert(title: "Hooray!", message: "You made it!", alertType : .success)
            }}

        
        // setting the startingPoint to the previous touchpoint
        // this updates while the user draws
        startingPoint = touchPoint
        
        if startingPoint == touchPoint {
            let location = touch!.location(in: self)
            print("x:",location.x, "y:", location.y, "\n")
            }
        drawShapeLayer() // draws the actual line shapes
    }
    
    func drawShapeLayer() {
    
        let shapeLayer = CAShapeLayer()
        // the shape layer is used to draw along the already created path
        shapeLayer.path = path.cgPath
        
        // adjusting the shape to our wishes
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = .round
        // adding the shapelayer to the vies layer and forcing a redraw
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
        
    }
    
    func clear() {
        self.path = nil
        self.layer.sublayers = nil
        self.setNeedsDisplay()
    }
}
