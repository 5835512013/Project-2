//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETear: UIView {
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
    var linePoints6: [CGPoint] = []
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var cf1 = CGRect(x: 75,y: 20,width: 40,height: 50)
    var cl1 = CGRect(x: 115,y: 20,width: 135,height: 50)
    var c1 = CGRect(x: 250,y: 20,width: 55,height: 50)
    
    var cf2 = CGRect(x: 115,y: 55,width: 35,height: 30)
    var cl2 = CGRect(x: 115,y: 85,width: 35,height: 75)
    var c2 = CGRect(x: 115,y: 160,width: 35,height: 40)
    
    var cf3 = CGRect(x: 210,y: 70,width: 40,height: 50)
    var cl3 = CGRect(x: 210,y: 120,width: 40,height: 160)
    var c3 = CGRect(x: 210,y: 280,width: 40,height: 70)
    
    var cl4 = CGRect(x: 140,y: 85,width: 30,height: 30)
    var c4 = CGRect(x: 170,y: 85,width: 40,height: 30)
    
    var cl5 = CGRect(x: 140,y: 130,width: 30,height: 30)
    var c5 = CGRect(x: 170,y: 130,width: 40,height: 30)
    
    var cf6 = CGRect(x: 30,y: 175,width: 60,height: 55)
    var cl6 = CGRect(x: 90,y: 175,width: 200,height: 55)
    var c6 = CGRect(x: 290,y: 175,width: 60,height: 55)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = true
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
        
        let backgroundImage = UIImageView(frame: self.bounds)
        backgroundImage.image = UIImage(named: "EarMain")
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
            
            if paths.count == 5 {
                linePoints6.append(linePoint)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        paths.append(path)
        lastPoints.append(lastPoint)
        
        if paths.count == 6 {
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
            
            let middle10 = linePoints3.count/3
            let middle11 = (linePoints3.count/5)*2
            let middle12 = linePoints3.count/2
            let middle13 = (linePoints3.count/3)*2
            let middle14 = (linePoints3.count/4)*3
            
            let middle15 = (linePoints4.count/5)*2
            let middle16 = linePoints4.count/2
            let middle17 = (linePoints4.count/3)*2
            
            let middle20 = (linePoints5.count/5)*2
            let middle21 = linePoints5.count/2
            let middle22 = (linePoints5.count/3)*2
            
            let middle25 = linePoints6.count/3
            let middle26 = (linePoints6.count/5)*2
            let middle27 = linePoints6.count/2
            let middle28 = (linePoints6.count/3)*2
            let middle29 = (linePoints6.count/4)*3
            
            
            if  (cf1.contains(firstPoints[0]) && (c1.contains(linePoints1[middle0]) || cl1.contains(linePoints1[middle0]) || cf1.contains(linePoints1[middle0]) || cf2.contains(linePoints1[middle0])) && (c1.contains(linePoints1[middle1]) || cl1.contains(linePoints1[middle1]) || cf1.contains(linePoints1[middle1]) || cf2.contains(linePoints1[middle1])) && (c1.contains(linePoints1[middle2]) || cf1.contains(linePoints1[middle1]) || cl1.contains(linePoints1[middle2]) || cf2.contains(linePoints1[middle2])) && (c1.contains(linePoints1[middle3]) || cf1.contains(linePoints1[middle3]) || cl1.contains(linePoints1[middle3]) || cf2.contains(linePoints1[middle3])) && (c1.contains(linePoints1[middle4]) || cf1.contains(linePoints1[middle4]) || cl1.contains(linePoints1[middle4]) || cf2.contains(linePoints1[middle4])) && c1.contains(lastPoints[0]))                                                                                                                                                                                                                                                               && ((cf2.contains(firstPoints[1]) || cl1.contains(firstPoints[1])) && (cf2.contains(linePoints2[middle5]) || c2.contains(linePoints2[middle5]) || cl1.contains(linePoints2[middle5]) || cl2.contains(linePoints2[middle5]) || cl6.contains(linePoints2[middle5]) || cl4.contains(linePoints2[middle5]) || cl5.contains(linePoints2[middle5])) && (cf2.contains(linePoints2[middle6]) || c3.contains(linePoints2[middle6]) || cl1.contains(linePoints2[middle6]) || cl2.contains(linePoints2[middle6]) || cl6.contains(linePoints2[middle6]) || cl4.contains(linePoints2[middle6]) || cl5.contains(linePoints2[middle6])) && (cf2.contains(linePoints2[middle7]) || c2.contains(linePoints2[middle7]) || cl1.contains(linePoints2[middle7]) || cl2.contains(linePoints2[middle7]) || cl6.contains(linePoints2[middle7]) || cl4.contains(linePoints2[middle7]) || cl5.contains(linePoints2[middle7])) && (cf2.contains(linePoints2[middle8]) || c2.contains(linePoints2[middle8]) || cl1.contains(linePoints2[middle8]) || cl2.contains(linePoints2[middle8]) || cl6.contains(linePoints2[middle8]) || cl4.contains(linePoints2[middle8]) || cl5.contains(linePoints2[middle8])) && (cf2.contains(linePoints2[middle9]) || c2.contains(linePoints2[middle9]) || cl1.contains(linePoints2[middle9]) || cl2.contains(linePoints2[middle9]) || cl6.contains(linePoints2[middle9]) || cl4.contains(linePoints2[middle9]) || cl5.contains(linePoints2[middle9])) && (c2.contains(lastPoints[1]) || cl6.contains(lastPoints[1])))                                                                                                                                                                                       && ((cl1.contains(firstPoints[2]) || cf3.contains(firstPoints[2])) && (cf3.contains(linePoints3[middle10]) || c3.contains(linePoints3[middle10]) || cl3.contains(linePoints3[middle10]) || cl1.contains(linePoints3[middle10]) || cl6.contains(linePoints3[middle10])) && (cf3.contains(linePoints3[middle11]) || c3.contains(linePoints3[middle11]) || cl3.contains(linePoints3[middle11]) || cl1.contains(linePoints3[middle11]) || cl6.contains(linePoints3[middle11])) && (cf3.contains(linePoints3[middle12]) || c3.contains(linePoints3[middle12]) || cl3.contains(linePoints3[middle12]) || cl1.contains(linePoints3[middle12]) || cl6.contains(linePoints3[middle12])) && (cf3.contains(linePoints3[middle13]) || c3.contains(linePoints3[middle13]) || cl3.contains(linePoints3[middle13]) || cl1.contains(linePoints3[middle13]) || cl6.contains(linePoints3[middle13])) && (cf3.contains(linePoints3[middle14]) || c3.contains(linePoints3[middle14]) || cl3.contains(linePoints3[middle14]) || cl1.contains(linePoints3[middle14]) || cl6.contains(linePoints3[middle14])) && (c3.contains(lastPoints[2])))                                                                                                                                                                                                                                                             && ((cl4.contains(firstPoints[3]) || cl2.contains(firstPoints[3])) && (cl4.contains(linePoints4[middle15]) || c4.contains(linePoints4[middle15]) || cl2.contains(linePoints4[middle15])) && (c4.contains(linePoints4[middle16]) || cl2.contains(linePoints4[middle16]) || cl4.contains(linePoints4[middle16])) && (c4.contains(linePoints4[middle17]) || cl2.contains(linePoints4[middle17]) || cl4.contains(linePoints4[middle17])) && c4.contains(lastPoints[3]))                                                                                                                                                                                && ((cl5.contains(firstPoints[4]) || cl2.contains(firstPoints[4])) && (cl5.contains(linePoints5[middle20]) || c5.contains(linePoints5[middle20]) || cl2.contains(linePoints5[middle20])) && (c5.contains(linePoints5[middle21]) || cl2.contains(linePoints5[middle21]) || cl5.contains(linePoints5[middle21])) && (c5.contains(linePoints5[middle22]) || cl2.contains(linePoints5[middle22]) || cl5.contains(linePoints5[middle22])) && c5.contains(lastPoints[4]))                                                                                                                                                                                && (cf6.contains(firstPoints[5]) && (cf6.contains(linePoints6[middle25]) || c6.contains(linePoints6[middle25]) || cl6.contains(linePoints6[middle25]) || c2.contains(linePoints6[middle25]) || cl3.contains(linePoints6[middle25])) && (cf6.contains(linePoints6[middle26]) || c6.contains(linePoints6[middle26]) || cl6.contains(linePoints6[middle26]) || c2.contains(linePoints6[middle26]) || cl3.contains(linePoints6[middle26])) && (cf6.contains(linePoints6[middle27]) || c6.contains(linePoints6[middle27]) || cl6.contains(linePoints6[middle27]) || c2.contains(linePoints6[middle27]) || cl3.contains(linePoints6[middle27])) && (cf6.contains(linePoints6[middle28]) || c6.contains(linePoints6[middle28]) || cl6.contains(linePoints6[middle28]) || c2.contains(linePoints6[middle28]) || cl3.contains(linePoints6[middle28])) && (cf6.contains(linePoints6[middle29]) || c6.contains(linePoints6[middle29]) || cl6.contains(linePoints6[middle29]) || c2.contains(linePoints6[middle29]) || cl3.contains(linePoints6[middle29])) && c6.contains(lastPoints[5])){
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
        linePoints6.removeAll()
    }
}
