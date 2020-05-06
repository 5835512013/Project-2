//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETeye: UIView {
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
    var linePoints5: [CGPoint] = []
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var cl1 = CGRect(x: 95,y: 50,width: 40,height: 200)
    var c1 = CGRect(x: 95,y: 250,width: 40,height: 60)
    
    var c2 = CGRect(x: 120,y: 40,width: 60,height: 50)
    var cl2 = CGRect(x: 180,y: 40,width: 100,height: 50)
    var cl3 = CGRect(x: 225,y: 90,width: 50,height: 165)
    var c3 = CGRect(x: 225,y: 255,width: 50,height: 70)
    
    var cl4 = CGRect(x: 130,y: 120,width: 50,height: 30)
    var c4 = CGRect(x: 180,y: 120,width: 45,height: 30)
    
    var cl5 = CGRect(x: 130,y: 180,width: 50,height: 30)
    var c5 = CGRect(x: 180,y: 180,width: 45,height: 30)
    
    var cl6 = CGRect(x: 130,y: 255,width: 55,height: 35)
    var c6 = CGRect(x: 185,y: 255,width: 50,height: 35)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = true
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
        
        let backgroundImage = UIImageView(frame: self.bounds)
        backgroundImage.image = UIImage(named: "Mu")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFit
        self.insertSubview(backgroundImage, at: 0)
    }
    
    override func draw(_ rect: CGRect) {
        let color:UIColor = UIColor.yellow
        
        let c1path:UIBezierPath = UIBezierPath(rect: c1)
        let cl1path:UIBezierPath = UIBezierPath(rect: cl1)
        
        let c2path:UIBezierPath = UIBezierPath(rect: c2)
        let cl2path:UIBezierPath = UIBezierPath(rect: cl2)
        let cl3path:UIBezierPath = UIBezierPath(rect: cl3)
        let c3path:UIBezierPath = UIBezierPath(rect: c3)
        
        let c4path:UIBezierPath = UIBezierPath(rect: c4)
        let cl4path:UIBezierPath = UIBezierPath(rect: cl4)
        
        let c5path:UIBezierPath = UIBezierPath(rect: c5)
        let cl5path:UIBezierPath = UIBezierPath(rect: cl5)
        
        let c6path:UIBezierPath = UIBezierPath(rect: c6)
        let cl6path:UIBezierPath = UIBezierPath(rect: cl6)
        
        color.set()
        
        c1path.stroke()
        cl1path.stroke()
        
        c2path.stroke()
        cl2path.stroke()
        cl3path.stroke()
        c3path.stroke()
        
        cl4path.stroke()
        c4path.stroke()
        
        cl5path.stroke()
        c5path.stroke()
        
        cl6path.stroke()
        c6path.stroke()
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
            
            if paths.count == 4 {
                linePoints5.append(linePoint)
            }
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        paths.append(path)
        lastPoints.append(lastPoint)
        
        if paths.count == 5 {
            let middle0 = linePoints1.count/3
            let middle1 = (linePoints1.count/5)*2
            let middle2 = linePoints1.count/2
            let middle3 = (linePoints1.count/3)*2
            let middle4 = (linePoints1.count/4)*3
            
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
            
            let middle20 = (linePoints5.count/5)*2
            let middle21 = linePoints5.count/2
            let middle22 = (linePoints5.count/3)*2
            
            
            if  ((c2.contains(firstPoints[0]) || cl1.contains(firstPoints[0])) && (c1.contains(linePoints1[middle0]) || cl1.contains(linePoints1[middle0]) || cl2.contains(linePoints1[middle0])) && (c1.contains(linePoints1[middle1]) || cl1.contains(linePoints1[middle1]) || cl2.contains(linePoints1[middle1])) && (c1.contains(linePoints1[middle2]) || cl1.contains(linePoints1[middle2]) || cl2.contains(linePoints1[middle2])) && (c1.contains(linePoints1[middle3]) || cl1.contains(linePoints1[middle3]) || cl2.contains(linePoints1[middle3])) && (c1.contains(linePoints1[middle4]) || cl1.contains(linePoints1[middle4]) || cl2.contains(linePoints1[middle4])) && c1.contains(lastPoints[0]))                                                                                                                                                                                                                    && ((c2.contains(firstPoints[1]) || cl1.contains(firstPoints[1])) && (cl1.contains(linePoints2[middle5]) || c2.contains(linePoints2[middle5]) || cl2.contains(linePoints2[middle5]) || cl3.contains(linePoints2[middle5]) || c3.contains(linePoints2[middle5])) && (cl1.contains(linePoints2[middle6]) || c2.contains(linePoints2[middle6]) || cl2.contains(linePoints2[middle6]) || cl3.contains(linePoints2[middle6]) || c3.contains(linePoints2[middle6])) && (cl1.contains(linePoints2[middle7]) || c2.contains(linePoints2[middle7]) || cl2.contains(linePoints2[middle7]) || cl3.contains(linePoints2[middle7]) || c3.contains(linePoints2[middle7])) && (cl1.contains(linePoints2[middle8]) || c2.contains(linePoints2[middle8]) || cl2.contains(linePoints2[middle8]) || cl3.contains(linePoints2[middle8]) || c3.contains(linePoints2[middle8])) && (cl1.contains(linePoints2[middle9]) || c2.contains(linePoints2[middle9]) || cl2.contains(linePoints2[middle9]) || cl3.contains(linePoints2[middle9]) || c3.contains(linePoints2[middle9])) && c3.contains(lastPoints[1]))                                                                                                             && ((cl4.contains(firstPoints[2]) || cl1.contains(firstPoints[2])) && (cl4.contains(linePoints3[middle10]) || c4.contains(linePoints3[middle10]) || cl1.contains(linePoints3[middle10])) && (c4.contains(linePoints3[middle11]) || cl1.contains(linePoints3[middle11]) || cl4.contains(linePoints3[middle11])) && (c4.contains(linePoints3[middle12]) || cl1.contains(linePoints3[middle12]) || cl4.contains(linePoints3[middle12])) && c4.contains(lastPoints[2]))                                                                                                                                                 && ((cl5.contains(firstPoints[3]) || cl1.contains(firstPoints[3])) && (cl5.contains(linePoints4[middle15]) || c5.contains(linePoints4[middle15]) || cl1.contains(linePoints4[middle15])) && (c5.contains(linePoints4[middle16]) || cl1.contains(linePoints4[middle16]) || cl5.contains(linePoints4[middle16])) && (c5.contains(linePoints4[middle17]) || cl1.contains(linePoints4[middle17]) || cl5.contains(linePoints4[middle17])) && c5.contains(lastPoints[3]))                                                                                                                                                 && ((cl6.contains(firstPoints[4]) || c1.contains(firstPoints[4])) && (cl6.contains(linePoints5[middle20]) || c6.contains(linePoints5[middle20]) || cl1.contains(linePoints5[middle20])) && (c6.contains(linePoints5[middle21]) || cl1.contains(linePoints5[middle21]) || cl6.contains(linePoints5[middle21])) && (c6.contains(linePoints5[middle22]) || cl1.contains(linePoints5[middle22]) || cl6.contains(linePoints5[middle22])) && (c6.contains(lastPoints[4]) || c3.contains(lastPoints[4]))){
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
        linePoints5.removeAll()
    }
}
