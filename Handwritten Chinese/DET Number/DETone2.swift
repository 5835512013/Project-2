//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETone2: UIView {
    // Properties for line drawing
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var c1 = CGRect(x: 30,y: 220,width: 100,height: 50)
    var c2 = CGRect(x: 280,y: 220,width: 100,height: 50)
    var c3 = CGRect(x: 130,y: 220,width: 150,height: 50)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
    }
    
    override func draw(_ rect: CGRect) {
        let color:UIColor = UIColor.yellow
        let c1path:UIBezierPath = UIBezierPath(rect: c1)
        let c2path:UIBezierPath = UIBezierPath(rect: c2)
        let c3path:UIBezierPath = UIBezierPath(rect: c3)
        
        color.set()
        c1path.stroke()
        c2path.stroke()
        c3path.stroke()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch = touches.first
        swiped = false
        lastPoint = touch?.location(in: self)
        firstPoint = lastPoint
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        if let touch = touches.first {
            swiped = true
            currentPoint = touch.location(in: self)
            drawShapeLayer(from: lastPoint, to: currentPoint)
            lastPoint = currentPoint
            
            if c1.contains(firstPoint) && c2.contains(lastPoint) {
                Distance(p1: firstPoint, p2: lastPoint)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        if !swiped {
            drawShapeLayer(from: lastPoint, to: lastPoint!)
        }
        
        
        if  c1.contains(firstPoint) && c3.contains(linePoint) && c2.contains(lastPoint){
            AlertView.instance.showAlert(title: "Hooray!", message: "You made it!", alertType : .success)
        }
            
        else {
            AlertView.instance.showAlert(title: "Oops!", message: "You've almost got it.", alertType : .failure)
        }
    }
    
    private func Distance(p1: CGPoint, p2: CGPoint) -> CGFloat {
        let distance = -1*(p1.x - p2.x)
        
        let dx = -1*((p1.x - p2.x)/2)
        let dy = p1.y
        
        let dPath = path.cgPath.boundingBox
        let dxPath = dPath.maxX
        
        print(dxPath)
        print(distance)
        if dx <= distance {
            linePoint = CGPoint(x: dx, y: dy)
        }
        else {
            c3.contains(lastPoint)
        }
        
        return distance
    }
    
    func drawShapeLayer(from fromPoint: CGPoint, to toPoint: CGPoint) {
        let shapeLayer = CAShapeLayer()
        path = UIBezierPath()
        path.move(to: fromPoint)
        path.addLine(to: toPoint)
        
        lineColor = UIColor.black
        lineWidth = 16
        
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = .round
        
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    
    func clear() {
        self.path = nil
        self.layer.sublayers = nil
        self.setNeedsDisplay()
    }
}
