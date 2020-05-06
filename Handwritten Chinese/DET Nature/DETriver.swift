//
//  ColorRed.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 18/4/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit

class DETriver: UIView {
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
    var linePoints7: [CGPoint] = []
    var linePoints8: [CGPoint] = []
    
    var fromPoint:CGPoint!
    var toPoint:CGPoint!
    var firstPoint:CGPoint!
    var linePoint:CGPoint!
    var lastPoint:CGPoint!
    var currentPoint:CGPoint!
    
    var swiped = false
    var lineCap:CAShapeLayerLineCap!
    
    var cl1 = CGRect(x: 75,y: 30,width: 30,height: 50)
    var c1 = CGRect(x: 105,y: 30,width: 30,height: 50)
    
    var cl2 = CGRect(x: 40,y: 110,width: 30,height: 40)
    var c2 = CGRect(x: 70,y: 110,width: 30,height: 40)
    
    var cl3 = CGRect(x: 90,y: 170,width: 35,height: 140)
    var c3 = CGRect(x: 45,y: 170,width: 45,height: 140)
    
    var cf4 = CGRect(x: 115,y: 50,width: 50,height: 60)
    var cl4 = CGRect(x: 165,y: 50,width: 140,height: 60)
    var c4 = CGRect(x: 305,y: 50,width: 55,height: 60)
    
    var cl5 = CGRect(x: 130,y: 140,width: 45,height: 45)
    var c5 = CGRect(x: 130,y: 185,width: 45,height: 40)
    
    var c6 = CGRect(x: 160,y: 120,width: 30,height: 40)
    var cl6 = CGRect(x: 190,y: 120,width: 45,height: 40)
    
    var cl7 = CGRect(x: 195,y: 160,width: 40,height: 10)
    var c7 = CGRect(x: 195,y: 170,width: 40,height: 20)
    
    var cl8 = CGRect(x: 165,y: 185,width: 35,height: 25)
    var c8 = CGRect(x: 200,y: 185,width: 30,height: 25)
    
    var cf9 = CGRect(x: 255,y: 85,width: 35,height: 50)
    var cl9 = CGRect(x: 255,y: 135,width: 35,height: 150)
    var c9 = CGRect(x: 255,y: 285,width: 35,height: 60)
    var c10 = CGRect(x: 210,y: 275,width: 45,height: 65)
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = true
        self.contentMode = .scaleToFill
        self.isUserInteractionEnabled = true
        
        let backgroundImage = UIImageView(frame: self.bounds)
        backgroundImage.image = UIImage(named: "RiverMain")
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
        let cf4path:UIBezierPath = UIBezierPath(rect: cf4)
        let cl4path:UIBezierPath = UIBezierPath(rect: cl4)
        let c4path:UIBezierPath = UIBezierPath(rect: c4)
        
        let c5path:UIBezierPath = UIBezierPath(rect: c5)
        let cl5path:UIBezierPath = UIBezierPath(rect: cl5)
        let c6path:UIBezierPath = UIBezierPath(rect: c6)
        let cl6path:UIBezierPath = UIBezierPath(rect: cl6)
        let cl7path:UIBezierPath = UIBezierPath(rect: cl7)
        let c7path:UIBezierPath = UIBezierPath(rect: c7)
        let cl8path:UIBezierPath = UIBezierPath(rect: cl8)
        let c8path:UIBezierPath = UIBezierPath(rect: c8)
        let c10path:UIBezierPath = UIBezierPath(rect: c10)
        let cl9path:UIBezierPath = UIBezierPath(rect: cl9)
        let c9path:UIBezierPath = UIBezierPath(rect: c9)
        let cf9path:UIBezierPath = UIBezierPath(rect: cf9)
        
        color.set()
        
        c1path.stroke()
        cl1path.stroke()
        c2path.stroke()
        cl2path.stroke()
        cl3path.stroke()
        c3path.stroke()
        c4path.stroke()
        cl4path.stroke()
        cf4path.stroke()
        
        c5path.stroke()
        cl5path.stroke()
        c6path.stroke()
        cl6path.stroke()
        cl7path.stroke()
        c7path.stroke()
        cl8path.stroke()
        c8path.stroke()
        cl9path.stroke()
        c9path.stroke()
        cf9path.stroke()
        c10path.stroke()
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
            
            if paths.count == 6 {
                linePoints7.append(linePoint)
            }
            
            if paths.count == 7 {
                linePoints8.append(linePoint)
            }
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        paths.append(path)
        lastPoints.append(lastPoint)
        
        if paths.count == 8 {
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
            
            let middle15 = linePoints4.count/3
            let middle16 = (linePoints4.count/5)*2
            let middle17 = linePoints4.count/2
            let middle18 = (linePoints4.count/3)*2
            let middle19 = (linePoints4.count/4)*3
            
            let middle20 = linePoints5.count/3
            let middle21 = (linePoints5.count/5)*2
            let middle22 = linePoints5.count/2
            let middle23 = (linePoints5.count/3)*2
            let middle24 = (linePoints5.count/4)*3
            
            let middle25 = linePoints6.count/3
            let middle26 = (linePoints6.count/5)*2
            let middle27 = linePoints6.count/2
            let middle28 = (linePoints6.count/3)*2
            let middle29 = (linePoints6.count/4)*3
            
            let middle30 = linePoints7.count/3
            let middle31 = (linePoints7.count/5)*2
            let middle32 = linePoints7.count/2
            let middle33 = (linePoints7.count/3)*2
            let middle34 = (linePoints7.count/4)*3
            
            let middle35 = linePoints8.count/3
            let middle36 = (linePoints8.count/5)*2
            let middle37 = linePoints8.count/2
            let middle38 = (linePoints8.count/3)*2
            let middle39 = (linePoints8.count/4)*3
            
            
            
            if  (cl1.contains(firstPoints[0]) && (cl1.contains(linePoints1[middle0]) || c1.contains(linePoints1[middle0]) || c3.contains(linePoints1[middle0])) && (cl1.contains(linePoints1[middle1]) || c1.contains(linePoints1[middle1]) || c3.contains(linePoints1[middle0])) && (cl1.contains(linePoints1[middle2]) || c1.contains(linePoints1[middle2]) || c3.contains(linePoints1[middle0])) && (cl1.contains(linePoints1[middle3]) || c1.contains(linePoints1[middle3]) || c3.contains(linePoints1[middle0])) && (cl1.contains(linePoints1[middle4]) || c1.contains(linePoints1[middle4]) || c3.contains(linePoints1[middle0])) && (c1.contains(lastPoints[0]) || c3.contains(lastPoints[0])))                                                                                                                                                                                 && (cl2.contains(firstPoints[1]) && (cl2.contains(linePoints2[middle5]) || c2.contains(linePoints2[middle5])) && (cl2.contains(linePoints2[middle6]) || c2.contains(linePoints2[middle6])) && (cl2.contains(linePoints2[middle7]) || c2.contains(linePoints2[middle7])) && (cl2.contains(linePoints2[middle8]) || c2.contains(linePoints2[middle8])) && (cl2.contains(linePoints2[middle9]) || c2.contains(linePoints2[middle9])) && c2.contains(lastPoints[1]))                                                                                                                                                                                  && (cl3.contains(firstPoints[2]) && (cl3.contains(linePoints3[middle10]) || c3.contains(linePoints3[middle10])) && (cl3.contains(linePoints3[middle11]) || c3.contains(linePoints3[middle11])) && (cl3.contains(linePoints3[middle12]) || c3.contains(linePoints3[middle12])) && (cl3.contains(linePoints3[middle13]) || c3.contains(linePoints3[middle13])) && (cl3.contains(linePoints3[middle14]) || c3.contains(linePoints3[middle14])) && c3.contains(lastPoints[2]))                                                                                                                                                                                 && (cf4.contains(firstPoints[3]) && (cf4.contains(linePoints4[middle15]) || cl4.contains(linePoints4[middle15]) || cf9.contains(linePoints4[middle15]) || c4.contains(linePoints4[middle15])) && (cf4.contains(linePoints4[middle16]) || cl4.contains(linePoints4[middle16]) || cf9.contains(linePoints4[middle16]) || c4.contains(linePoints4[middle16])) && (cf4.contains(linePoints4[middle17]) || cl4.contains(linePoints4[middle17]) || cf9.contains(linePoints4[middle17]) || c4.contains(linePoints4[middle17])) && (cf4.contains(linePoints4[middle18]) || cl4.contains(linePoints4[middle18]) || cf9.contains(linePoints4[middle18]) || c4.contains(linePoints4[middle18])) && (cf4.contains(linePoints4[middle19]) || cl4.contains(linePoints4[middle19]) || cf9.contains(linePoints4[middle19]) || c4.contains(linePoints4[middle19])) && c4.contains(lastPoints[3]))                                                                                                                                                                                                                                                               && ((cl5.contains(firstPoints[4]) || c6.contains(firstPoints[4])) && (cl5.contains(linePoints5[middle20]) || c5.contains(linePoints5[middle20]) || c6.contains(linePoints5[middle20]) || cl8.contains(linePoints5[middle20])) && (cl5.contains(linePoints5[middle21]) || c5.contains(linePoints5[middle21]) || c6.contains(linePoints5[middle21]) || cl8.contains(linePoints5[middle21])) && (cl5.contains(linePoints5[middle22]) || c5.contains(linePoints5[middle22]) || c6.contains(linePoints5[middle22]) || cl8.contains(linePoints5[middle22])) && (cl5.contains(linePoints5[middle23]) || c5.contains(linePoints5[middle23]) || c6.contains(linePoints5[middle23]) || cl8.contains(linePoints5[middle23])) && (cl5.contains(linePoints5[middle24]) || c5.contains(linePoints5[middle24]) || c6.contains(linePoints5[middle24]) || cl8.contains(linePoints5[middle24])) && (c5.contains(lastPoints[4]) || cl8.contains(lastPoints[4])))                                                                                                                                                                                      && ((c6.contains(firstPoints[5]) || cl5.contains(firstPoints[5])) && (cl6.contains(linePoints6[middle25]) || c6.contains(linePoints6[middle25]) || cl7.contains(linePoints6[middle25]) || c7.contains(linePoints6[middle25]) || cl5.contains(linePoints6[middle25]) || c8.contains(linePoints6[middle25])) && (cl6.contains(linePoints6[middle26]) || c6.contains(linePoints6[middle26]) || cl7.contains(linePoints6[middle26]) || c7.contains(linePoints6[middle26]) || cl5.contains(linePoints6[middle26]) || c8.contains(linePoints6[middle26])) && (cl6.contains(linePoints6[middle27]) || c6.contains(linePoints6[middle27]) || cl7.contains(linePoints6[middle27]) || c7.contains(linePoints6[middle27]) || cl5.contains(linePoints6[middle27]) || c8.contains(linePoints6[middle27])) && (cl6.contains(linePoints6[middle28]) || c6.contains(linePoints6[middle28]) || cl7.contains(linePoints6[middle28]) || c7.contains(linePoints6[middle28]) || cl5.contains(linePoints6[middle28]) || c8.contains(linePoints6[middle28])) && (cl6.contains(linePoints6[middle29]) || c6.contains(linePoints6[middle29]) || cl7.contains(linePoints6[middle29]) || c7.contains(linePoints6[middle29]) || cl5.contains(linePoints6[middle29]) || c8.contains(linePoints6[middle29])) && (c7.contains(lastPoints[5]) || c8.contains(lastPoints[5])))                                                                                                                                                                                                                                                                                             && ((c5.contains(firstPoints[6]) || cl8.contains(firstPoints[6])) && (c5.contains(linePoints7[middle30]) || cl8.contains(linePoints7[middle30]) || c7.contains(linePoints7[middle30]) || c8.contains(linePoints7[middle30])) && (c5.contains(linePoints7[middle31]) || cl8.contains(linePoints7[middle31]) || c7.contains(linePoints7[middle31]) || c8.contains(linePoints7[middle31])) && (c5.contains(linePoints7[middle32]) || cl8.contains(linePoints7[middle32]) || c8.contains(linePoints7[middle32]) || c7.contains(linePoints7[middle32])) && (c5.contains(linePoints7[middle33]) || cl8.contains(linePoints7[middle33]) || c8.contains(linePoints7[middle33]) || c7.contains(linePoints7[middle33])) && (c5.contains(linePoints7[middle34]) || cl8.contains(linePoints7[middle34]) || c8.contains(linePoints7[middle34]) || c7.contains(linePoints7[middle34])) && (c7.contains(lastPoints[6]) || c8.contains(lastPoints[6])))                                                                                                                                                                                                                                                                                                                                   && ((cf9.contains(firstPoints[7]) || cl4.contains(firstPoints[7])) && (cf9.contains(linePoints8[middle35]) || cl9.contains(linePoints8[middle35]) || cl4.contains(linePoints8[middle35]) || c9.contains(linePoints8[middle35]) || c10.contains(linePoints8[middle35])) && (cf9.contains(linePoints8[middle36]) || cl9.contains(linePoints8[middle36]) || cl4.contains(linePoints8[middle36]) || c9.contains(linePoints8[middle36]) || c10.contains(linePoints8[middle36])) && (cf9.contains(linePoints8[middle37]) || cl9.contains(linePoints8[middle37]) || cl4.contains(linePoints8[middle37]) || c9.contains(linePoints8[middle37]) || c10.contains(linePoints8[middle37])) && (cf9.contains(linePoints8[middle38]) || cl9.contains(linePoints8[middle38]) || cl4.contains(linePoints8[middle38]) || c9.contains(linePoints8[middle38]) || c10.contains(linePoints8[middle38])) && (cf9.contains(linePoints8[middle39]) || cl9.contains(linePoints8[middle39]) || cl4.contains(linePoints8[middle39]) || c9.contains(linePoints8[middle39]) || c10.contains(linePoints8[middle39])) && (c9.contains(lastPoints[7]) || c10.contains(lastPoints[7]))) {
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
        linePoints7.removeAll()
        linePoints8.removeAll()
    }
}
