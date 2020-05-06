//
//  SetVocab.swift
//  Handwritten Chinese
//
//  Created by Knpblo on 23/12/2562 BE.
//  Copyright © 2562 Knpblo. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

var OnCount:Int = 0

class SetVocab: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewMain: UICollectionView!
    
    @IBOutlet weak var NameText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    static let reuseIdentifier = "imageSi"
    
    var imageArray = [UIImage(named: "NumSec"), UIImage(named: "face"), UIImage(named: "NatureBook"), UIImage(named: "DirectionMain")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewMain.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
        cell.imgImageMain.image = imageArray[indexPath.row]
        cell.imgImageMain.layer.borderColor = UIColor.black.cgColor
        cell.imgImageMain.layer.borderWidth = 15
        cell.imgImageMain.layer.cornerRadius = 30
        
        switch (indexPath.row) {
        case 0 :
            DispatchQueue.main.async{
                self.collectionViewMain.reloadData()
                self.NameText.text = "Number"
            }
            
        case 1 :
            DispatchQueue.main.async{
                self.collectionViewMain.reloadData()
                self.NameText.text = "Face"
            }
            
        case 2 :
            DispatchQueue.main.async{
                self.collectionViewMain.reloadData()
                self.NameText.text = "Nature"
            }
            
        case 3 :
            DispatchQueue.main.async{
                self.collectionViewMain.reloadData()
                self.NameText.text = "Direction"
            }
            
        default: break
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch (indexPath.row) {
            
        case 0 : self.performSegue(withIdentifier: "setNum", sender: self)
            
        case 1 : self.performSegue(withIdentifier: "setFace", sender: self)
            
        case 2 : self.performSegue(withIdentifier: "setNature", sender: self)
            
        case 3 : self.performSegue(withIdentifier: "setDirection", sender: self)
            
        default: break
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
}
