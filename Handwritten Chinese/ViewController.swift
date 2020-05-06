//
//  ViewController.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 9/9/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var TreeSeg: UISegmentedControl!
    @IBOutlet weak var Tree1: UILabel!
    @IBOutlet weak var Tree2: UILabel!
    @IBOutlet weak var Tree3: UILabel!
    @IBOutlet weak var Tree4: UILabel!
    @IBOutlet weak var Tree5: UILabel!
    @IBOutlet weak var Tree6: UILabel!
    @IBOutlet weak var Tree7: UILabel!
    @IBOutlet weak var Tree8: UILabel!
    @IBOutlet weak var Tree9: UILabel!
    
    
    @IBOutlet weak var RiverSeg: UISegmentedControl!
    @IBOutlet weak var River2: UILabel!
    @IBOutlet weak var River3: UILabel!
    @IBOutlet weak var River4: UILabel!
    @IBOutlet weak var River5: UILabel!
    
    
    @IBOutlet weak var FAQSeg: UISegmentedControl!
    @IBOutlet weak var FAQ1: UILabel!
    @IBOutlet weak var FAQ2: UILabel!
    @IBOutlet weak var FAQ3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    @IBAction func TreeSecSet(_ sender: Any) {
        let getIndex = TreeSeg.selectedSegmentIndex
        
        switch (getIndex) {
        case 0:
            Tree1.text = "mù - Tree"
            Tree2.text = "mù - Tree"
            Tree3.text = "lín - Forest"
            Tree4.text = "rén - People"
            Tree5.text = "mù - Tree"
            Tree6.text = "Xiū - Rest"
            Tree7.text = "mù - Tree"
            Tree8.text = "xīng - Star"
            Tree9.text = "mùxīng - Jupiter"
            
        case 1:
            Tree1.text = "มู่ - ต้นไม้"
            Tree2.text = "มู่ - ต้นไม้"
            Tree3.text = "หลิน - ป่า"
            Tree4.text = "เหริน - คน"
            Tree5.text = "มู่ - ต้นไม้"
            Tree6.text = "ซิว - พักผ่อน"
            Tree7.text = "มู่ - ต้นไม้"
            Tree8.text = "ซิง - ดาว"
            Tree9.text = "มู่ซิง - ดาวพฤหัสบดี"
            
        default:
            Tree1.text = "mù - Tree"
            Tree2.text = "mù - Tree"
            Tree3.text = "lín - Forest"
            Tree4.text = "rén - People"
            Tree5.text = "mù - Tree"
            Tree6.text = "Xiū - Rest"
            Tree7.text = "mù - Tree"
            Tree8.text = "xīng - Star"
            Tree9.text = "mùxīng - Jupiter"
        }
    }
    
    
    
    @IBAction func RiverSegSet(_ sender: Any) {
        let getIndex = RiverSeg.selectedSegmentIndex
        
        switch (getIndex) {
        case 0:
            River2.text = "Hé - River"
            River3.text = "Jiāng - River"
            River4.text = "河 is mostly used in the North, 江 is mostly used in the South."
            River5.text = "河 refers to Yellow River, but 江 refers to Yangtze river."
        
            
        case 1:
            River2.text = "เหอ - แม่น้ำ"
            River3.text = "เจียง - แม่น้ำ"
            River4.text = "河 มักใช้ทางตอนเหนือ ส่วน 江 มักใช้ทางตอนใต้"
            River5.text = "河 อ้างอิงถึงแม่น้ำฮวงโห ส่วน 江 อ้างอิงถึงแม่น้ำแยงซี"
      
            
        default:
            River2.text = "Hé - River"
            River3.text = "Jiāng - River"
            River4.text = "河 is mostly used in the North, 江 is mostly used in the South."
            River5.text = "河 refers to Yellow River, but 江 refers to Yangtze river."
    
        }
    }
    
    
    @IBAction func FAQSegSet(_ sender: Any) {
        let getIndex = FAQSeg.selectedSegmentIndex
        
        switch (getIndex) {
        case 0:
            FAQ1.text = "Horizontal to Vertical. (left to right first, then top to bottom)"
            FAQ2.text = "Enclose first, then fil the middle before close the frame."
            FAQ3.text = "Centered first, then write the symmetrical."
            
        
        case 1:
            FAQ1.text = "เขียนจากแนวนอนไปยังแนวตั้ง (ซ้ายไปขวา, บนลงล่าง)"
            FAQ2.text = "เขียนเส้นรอบนอกก่อน จากนั้นเขียนเส้นข้างในจนหมด แล้วทำการลากเส้นปิดกรอบ"
            FAQ3.text = "เขียนเส้นตรงกลางก่อน จากนั้นทำการเขียนเส้นที่สมมาตรกันทั้งสองฝั่ง"
            
            
        default:
            FAQ1.text = "Horizontal to Vertical. (left to right first, then top to bottom)"
            FAQ2.text = "Enclose first, then fil the middle before close the frame."
            FAQ3.text = "Centered first, then write the symmetrical."
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

