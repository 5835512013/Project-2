//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETsix: UIView {
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
    var linePoints4: [CGPoint] = []
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var c1 = CGRect(x: 150,y: 40,width: 75,height: 20)
    var cl1 = CGRect(x: 150,y: 60,width: 75,height: 40)
    
    var cf2 = CGRect(x: 30,y: 120,width: 50,height: 60)
    var c2 = CGRect(x: 80,y: 120,width: 230,height: 60)
    var cl2 = CGRect(x: 310,y: 120,width: 50,height: 60)
    
    var c3 = CGRect(x: 45,y: 190,width: 120,height: 40)
    var cl3 = CGRect(x: 45,y: 230,width: 120,height: 85)
    
    var c4 = CGRect(x: 215,y: 200,width: 95,height: 40)
    var cl4 = CGRect(x: 215,y: 240,width: 95,height: 70)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = true
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
        
        let backgroundImage = UIImageView(frame: self.bounds)
        backgroundImage.image = UIImage(named: "6view")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFit
        self.insertSubview(backgroundImage, at: 0)
    }
    
    override func draw(_ rect: CGRect) {
        let color:UIColor = UIColor.yellow
        
        let c1path:UIBezierPath = UIBezierPath(rect: c1)
        let cl1path:UIBezierPath = UIBezierPath(rect: cl1)
        
        let c2path:UIBezierPath = UIBezierPath(rect: c2)
        let cl2path:UIBezierPath = UIBezierPath(rect: cl2)
        
        let c3path:UIBezierPath = UIBezierPath(rect: c3)
        let cl3path:UIBezierPath = UIBezierPath(rect: cl3)
        
        let c4path:UIBezierPath = UIBezierPath(rect: c4)
        let cl4path:UIBezierPath = UIBezierPath(rect: cl4)
        
        color.set()
        
        c1path.stroke()
        cl1path.stroke()
        
        c2path.stroke()
        cl2path.stroke()
        
        c3path.stroke()
        cl3path.stroke()
        
        c4path.stroke()
        cl4path.stroke()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let touch = touches.first
        swiped = false
        lastPoint = touch?.location(in: self)
        firstPoint = lastPoint
        firstPoints.append(firstPoint)
        print(firstPoint)
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
            
            if paths.count == 3 {
                linePoints4.append(linePoint)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        paths.append(path)
        lastPoints.append(lastPoint)
        
        if paths.count == 4 {
            let middle0 = (linePoints1.count/5)*2
            let middle1 = linePoints1.count/2
            let middle2 = (linePoints1.count/3)*2
            
            let middle5 = linePoints2.count/3
            let middle6 = (linePoints2.count/5)*2
            let middle7 = linePoints2.count/2
            let middle8 = (linePoints2.count/3)*2
            let middle9 = (linePoints2.count/4)*3
            
            let middle10 = (linePoints3.count/5)*2
            let middle11 = linePoints3.count/2
            let middle12 = (linePoints3.count/3)*2
            
            let middle15 = (linePoints4.count/5)*2
            let middle16 = linePoints4.count/2
            let middle17 = (linePoints4.count/3)*2

            
            if  ((c1.contains(firstPoints[0]) || cl1.contains(firstPoints[0])) && (c1.contains(linePoints1[middle0]) || cl1.contains(linePoints1[middle0])) && (c1.contains(linePoints1[middle1]) || cl1.contains(linePoints1[middle1])) && (c1.contains(linePoints1[middle2]) || cl1.contains(linePoints1[middle2])) && cl1.contains(lastPoints[0]))                                                                                                                                                                                                                       && (cf2.contains(firstPoints[1]) && (cf2.contains(linePoints2[middle5]) || c2.contains(linePoints2[middle5]) || cl2.contains(linePoints2[middle5])) && (cf2.contains(linePoints2[middle6]) || c2.contains(linePoints2[middle6]) || cl2.contains(linePoints2[middle6])) && (cf2.contains(linePoints2[middle7]) || c2.contains(linePoints2[middle7]) || cl2.contains(linePoints2[middle7])) && (cf2.contains(linePoints2[middle8]) || c2.contains(linePoints2[middle8]) || cl2.contains(linePoints2[middle8])) && (cf2.contains(linePoints2[middle9]) || c2.contains(linePoints2[middle9]) || cl2.contains(linePoints2[middle9])) && cl2.contains(lastPoints[1]))                                                                                                                                                                                                                                                   && (c3.contains(firstPoints[2]) && (c3.contains(linePoints3[middle10]) || cl3.contains(linePoints3[middle10])) && (c3.contains(linePoints3[middle11]) || cl3.contains(linePoints3[middle11])) && (c3.contains(linePoints3[middle12]) || cl3.contains(linePoints3[middle12])) && cl3.contains(lastPoints[2]))                                                                                                                                                && (c4.contains(firstPoints[3]) && (c4.contains(linePoints4[middle15]) || cl4.contains(linePoints4[middle15])) && (c4.contains(linePoints4[middle16]) || cl4.contains(linePoints4[middle16])) && (c4.contains(linePoints4[middle17]) || cl4.contains(linePoints4[middle17])) && cl4.contains(lastPoints[3])){
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
        linePoints4.removeAll()
    }
}
