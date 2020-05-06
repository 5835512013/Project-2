//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETthree: UIView {
    // Properties for line drawing
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    
    var paths: [UIBezierPath] = []
    var firstPoints: [CGPoint] = []
    var lastPoints: [CGPoint] = []
    var linePoints1: [CGPoint] = []
    var linePoints2: [CGPoint] = []
    var linePoints3: [CGPoint] = []
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var cf1 = CGRect(x: 100,y: 55,width: 45,height: 50)
    var c1 = CGRect(x: 145,y: 55,width: 100,height: 50)
    var cl1 = CGRect(x: 245,y: 55,width: 40,height: 50)
    
    var cf2 = CGRect(x: 110,y: 150,width: 40,height: 45)
    var c2 = CGRect(x: 150,y: 150,width: 80,height: 45)
    var cl2 = CGRect(x: 230,y: 150,width: 40,height: 45)
    
    var cf3 = CGRect(x: 35,y: 235,width: 50,height: 60)
    var c3 = CGRect(x: 85,y: 235,width: 230,height: 60)
    var cl3 = CGRect(x: 315,y: 235,width: 50,height: 60)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = true
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
        
        let backgroundImage = UIImageView(frame: self.bounds)
        backgroundImage.image = UIImage(named: "3view")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFit
        self.insertSubview(backgroundImage, at: 0)
    }
    
    override func draw(_ rect: CGRect) {
        let color:UIColor = UIColor.yellow
        
        let c1path:UIBezierPath = UIBezierPath(rect: c1)
        let cl1path:UIBezierPath = UIBezierPath(rect: cl1)
        
        let c2path:UIBezierPath = UIBezierPath(rect: c3)
        let cl2path:UIBezierPath = UIBezierPath(rect: cl2)
        
        let c3path:UIBezierPath = UIBezierPath(rect: c3)
        let cl3path:UIBezierPath = UIBezierPath(rect: cl3)
        
        color.set()
        
        c1path.stroke()
        cl1path.stroke()
        
        c2path.stroke()
        cl2path.stroke()
        
        c3path.stroke()
        cl3path.stroke()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch = touches.first
        swiped = false
        lastPoint = touch?.location(in: self)
        firstPoint = lastPoint
        firstPoints.append(firstPoint)
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        if let touch = touches.first {
            swiped = true
            currentPoint = touch.location(in: self)
            drawShapeLayer(from: lastPoint, to: currentPoint)
            lastPoint = currentPoint
            let linePoint:CGPoint = lastPoint

            if paths.count == 0 {
                linePoints1.append(linePoint)
            }
            
            if paths.count == 1 {
                linePoints2.append(linePoint)
            }
            
            if paths.count == 2 {
                linePoints3.append(linePoint)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        paths.append(path)
        lastPoints.append(lastPoint)
        
        if paths.count == 3 {
            let middle0 = (linePoints1.count/5)*2
            let middle1 = linePoints1.count/2
            let middle2 = (linePoints1.count/3)*2
            
            let middle5 = linePoints2.count/3
            let middle6 = (linePoints2.count/5)*2
            let middle7 = linePoints2.count/2
            let middle8 = (linePoints2.count/3)*2
            let middle9 = (linePoints2.count/4)*3
            
            let middle10 = linePoints3.count/3
            let middle11 = (linePoints3.count/5)*2
            let middle12 = linePoints3.count/2
            let middle13 = (linePoints3.count/3)*2
            let middle14 = (linePoints3.count/4)*3
            
            if  (cf1.contains(firstPoints[0]) && (cf1.contains(linePoints1[middle0]) || c1.contains(linePoints1[middle0]) || c2.contains(linePoints1[middle0])) && (cf1.contains(linePoints1[middle1]) || c1.contains(linePoints1[middle1]) || c2.contains(linePoints1[middle1])) && (cf1.contains(linePoints1[middle2]) || c1.contains(linePoints1[middle2]) || c2.contains(linePoints1[middle2])) && cl1.contains(lastPoints[0]))                                                                                                                                  && (cf2.contains(firstPoints[1]) && (cf2.contains(linePoints2[middle5]) || c2.contains(linePoints2[middle5]) || cl2.contains(linePoints2[middle5])) && (cf2.contains(linePoints2[middle6]) || c2.contains(linePoints2[middle6]) || cl2.contains(linePoints2[middle6])) && (cf2.contains(linePoints2[middle7]) || c2.contains(linePoints2[middle7]) || cl2.contains(linePoints2[middle7])) && (cf2.contains(linePoints2[middle8]) || c2.contains(linePoints2[middle8]) || cl2.contains(linePoints2[middle8])) && (cf2.contains(linePoints2[middle9]) || c2.contains(linePoints2[middle9]) || cl2.contains(linePoints2[middle9])) && cl2.contains(lastPoints[1]))                                                                                                                             && (cf3.contains(firstPoints[2]) && (cf3.contains(linePoints3[middle10]) || c3.contains(linePoints3[middle10]) || cl3.contains(linePoints3[middle10])) && (cf3.contains(linePoints3[middle11]) || c3.contains(linePoints3[middle11]) || cl3.contains(linePoints3[middle11])) && (cf3.contains(linePoints3[middle12]) || c3.contains(linePoints3[middle12]) || cl3.contains(linePoints3[middle12])) && (cf3.contains(linePoints3[middle13]) || c3.contains(linePoints3[middle13]) || cl3.contains(linePoints3[middle13])) && (cf3.contains(linePoints3[middle14]) || c3.contains(linePoints3[middle14]) || cl3.contains(linePoints3[middle14])) && cl3.contains(lastPoints[2])){
                AlertView.instance.showAlert(title: "Hooray!", message: "Excellent", alertType : .success)
                clear()
            }
                
            else {
                AlertView.instance.showAlert(title: "Oops!", message: "Try again", alertType : .failure)
                clear()
            }
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
        self.layer.sublayers = nil
        self.setNeedsDisplay()
        paths.removeAll()
        firstPoints.removeAll()
        lastPoints.removeAll()
        linePoints1.removeAll()
        linePoints2.removeAll()
        linePoints3.removeAll()
    }
}
