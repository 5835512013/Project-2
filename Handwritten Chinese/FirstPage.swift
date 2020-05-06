//
//  FirstPage.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 1/3/2563 BE.
//  Copyright © 2563 Knpblo. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class FirstPage: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        OnCount = UserDefaults.standard.integer(forKey: "SoundEn")
        
        if OnCount == 1 {
            initSound()
            SoundOn()
        }
        
        if OnCount == 0 {
            initSound()
            SoundOff()
        }
        
        print(OnCount)
            
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
