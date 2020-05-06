//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETone: UIView {
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    var paths: [UIBezierPath] = []
    var lastPoints: [CGPoint] = []
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var cf1 = CGRect(x: 35,y: 155,width: 45,height: 50)
    var c1 = CGRect(x: 80,y: 155,width: 220,height: 50)
    var c2 = CGRect(x: 300,y: 155,width: 45,height: 50)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = true
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
        
        let backgroundImage = UIImageView(frame: self.bounds)
        backgroundImage.image = UIImage(named: "1view")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFit
        self.insertSubview(backgroundImage, at: 0)
        
    }
    
    override func draw(_ rect: CGRect) {
        let color:UIColor = UIColor.yellow
        let c1path:UIBezierPath = UIBezierPath(rect: c1)
        let c2path:UIBezierPath = UIBezierPath(rect: c2)
        
        color.set()
        c1path.stroke()
        c2path.stroke()
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
            lastPoints.append(lastPoint)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        let middle0 = lastPoints.count/4
        let middle1 = (lastPoints.count/3)*2
        let middle2 = lastPoints.count/2
        let middle3 = (lastPoints.count/5)*2
        let middle4 = lastPoints.count/3
        
        if  (cf1.contains(firstPoint) && (cf1.contains(lastPoints[middle0]) || c1.contains(lastPoints[middle0]) || c2.contains(lastPoints[middle0])) && (cf1.contains(lastPoints[middle1]) || c1.contains(lastPoints[middle1]) || c2.contains(lastPoints[middle1])) && (cf1.contains(lastPoints[middle2]) || c1.contains(lastPoints[middle2]) || c2.contains(lastPoints[middle2])) && (cf1.contains(lastPoints[middle3]) || c1.contains(lastPoints[middle3]) || c2.contains(lastPoints[middle3])) && (cf1.contains(lastPoints[middle4]) || c1.contains(lastPoints[middle4]) || c2.contains(lastPoints[middle4])) && c2.contains(lastPoint)){
            AlertView.instance.showAlert(title: "Hooray!", message: "Excellent", alertType : .success)
            clear()
        }
    
        else {
            AlertView.instance.showAlert(title: "Oops!", message: "Try again", alertType : .failure)
            clear()
        }
    }
    
    func drawShapeLayer(from fromPoint: CGPoint, to toPoint: CGPoint) {
        let shapeLayer = CAShapeLayer()
        path = UIBezierPath()
        path.move(to: fromPoint)
        path.addLine(to: toPoint)
        
        lineColor = UIColor.black
        lineWidth = 8
        
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
        lastPoints.removeAll()
        self.layer.sublayers = nil
        self.setNeedsDisplay()
    }
}
