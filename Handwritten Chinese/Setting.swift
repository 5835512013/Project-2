//
//  Setting.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 1/3/2563 BE.
//  Copyright © 2563 Knpblo. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

var player:AVAudioPlayer?

func initSound(){
    let value = UIInterfaceOrientation.landscapeLeft.rawValue
    UIDevice.current.setValue(value, forKey: "orientation")
    
    let session = AVAudioSession.sharedInstance()
    
    do{
        try session.setCategory(AVAudioSession.Category.soloAmbient)
        try session.setActive(true)
    }
    catch let error as NSError {
        print(error)
    }
    
    do
    {
        let audioPath = Bundle.main.path(forResource: "Main", ofType: "mp3")
        try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
    }
    catch{}
}

func SoundOn(){
    player?.prepareToPlay()
    player?.numberOfLoops = -1
    player?.volume = 1
    player?.play()
}

func SoundOff(){
    player?.pause()
}

class Setting: UIViewController{

    @IBOutlet weak var SoundEn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SoundEn.isOn = UserDefaults.standard.bool(forKey: "SoundEn")
        UserDefaults.standard.set(OnCount, forKey: "SoundEn2")
        
        if SoundEn.isOn == true{
            OnCount += 1
        }
        else{
            OnCount -= 1
        }
    }
    
    @IBAction func SoundEn(_ sender: Any) {
        UserDefaults.standard.set(SoundEn.isOn, forKey: "SoundEn")
        
        if SoundEn.isOn{
            SoundOn()
        }
        else{
            SoundOff()
        }
    }
    
}
