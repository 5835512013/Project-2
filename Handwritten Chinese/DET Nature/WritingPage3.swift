import UIKit
import AVFoundation
import AVKit

class WritingPage3: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewWood: UICollectionView!
    
    @IBOutlet weak var collectionViewForest: UICollectionView!
    
    @IBOutlet weak var collectionViewRiver: UICollectionView!
    
    @IBOutlet weak var collectionViewRock: UICollectionView!
    
    @IBOutlet weak var collectionViewMountain: UICollectionView!
    
    @IBOutlet weak var collectionViewSun: UICollectionView!
    
    
    
    @IBOutlet weak var AreaDETwood: DETwood!
    
    @IBOutlet weak var AreaDETforest: DETforest!
    
    @IBOutlet weak var AreaDETriver: DETriver!
    
    @IBOutlet weak var AreaDETrock: DETrock!
    
    @IBOutlet weak var AreaDETmountain: DETmountain!

    @IBOutlet weak var AreaDETsun: DETsun!
    
    @IBOutlet weak var LabelTree1: UILabel!
    @IBOutlet weak var LabelTree2: UILabel!
    @IBOutlet weak var LabelTree3: UIView!
    @IBOutlet weak var LabelTree4: UIView!
    @IBOutlet weak var LabelTree5: UIButton!
    
    @IBOutlet weak var LabelForest1: UILabel!
    @IBOutlet weak var LabelForest2: UILabel!
    @IBOutlet weak var LabelForest3: UIView!
    @IBOutlet weak var LabelForest4: UIView!
    
    @IBOutlet weak var LabelRiver1: UILabel!
    @IBOutlet weak var LabelRiver2: UILabel!
    @IBOutlet weak var LabelRiver3: UIView!
    @IBOutlet weak var LabelRiver4: UIView!
    @IBOutlet weak var LabelRiver5: UIButton!
    
    
    @IBOutlet weak var LabelRock1: UILabel!
    @IBOutlet weak var LabelRock2: UILabel!
    @IBOutlet weak var LabelRock3: UIView!
    @IBOutlet weak var LabelRock4: UIView!
    
    @IBOutlet weak var LabelMountain1: UILabel!
    @IBOutlet weak var LabelMountain2: UILabel!
    @IBOutlet weak var LabelMountain3: UIView!
    @IBOutlet weak var LabelMountain4: UIView!
    
    @IBOutlet weak var LabelSun1: UILabel!
    @IBOutlet weak var LabelSun2: UILabel!
    @IBOutlet weak var LabelSun3: UIView!
    @IBOutlet weak var LabelSun4: UIView!
    
    
    var woodPlay:AVAudioPlayer = AVAudioPlayer()
    var forestPlay:AVAudioPlayer = AVAudioPlayer()
    var riverPlay:AVAudioPlayer = AVAudioPlayer()
    var rockPlay:AVAudioPlayer = AVAudioPlayer()
    var mountainPlay:AVAudioPlayer = AVAudioPlayer()
    var sunPlay:AVAudioPlayer = AVAudioPlayer()
    
    var imageArrayWood = [UIImage(named: "Wood-1"), UIImage(named: "Wood-2"), UIImage(named: "Wood-3"), UIImage(named: "Wood-4")]
    
     var imageArrayForest = [UIImage(named: "Forest-1"), UIImage(named: "Forest-2"), UIImage(named: "Forest-3"), UIImage(named: "Forest-4"), UIImage(named: "Forest-5"), UIImage(named: "Forest-6"), UIImage(named: "Forest-7"), UIImage(named: "Forest-8")]
    
     var imageArrayRiver = [UIImage(named: "River-1"), UIImage(named: "River-2"), UIImage(named: "River-3"), UIImage(named: "River-4"), UIImage(named: "River-5"), UIImage(named: "River-6"), UIImage(named: "River-7"), UIImage(named: "River-8")]
    
     var imageArrayRock = [UIImage(named: "Rock-1"), UIImage(named: "Rock-2"), UIImage(named: "Rock-3"), UIImage(named: "Rock-4"), UIImage(named: "Rock-5")]
    
     var imageArrayMountain = [UIImage(named: "Mountain-1"), UIImage(named: "Mountain-2"), UIImage(named: "Mountain-3")]
    
     var imageArraySun = [UIImage(named: "Sun-1"), UIImage(named: "Sun-2"), UIImage(named: "Sun-3"), UIImage(named: "Sun-4")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionViewWood {
            return imageArrayWood.count
        }
        
        if collectionView == self.collectionViewForest {
            return imageArrayForest.count
        }
        
        if collectionView == self.collectionViewRiver {
            return imageArrayRiver.count
        }
        
        if collectionView == self.collectionViewRock {
            return imageArrayRock.count
        }
        
        if collectionView == self.collectionViewMountain {
            return imageArrayMountain.count
        }
        
        return imageArraySun.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionViewWood {
            let cellWood = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellWood.imgImageWood.image = imageArrayWood[indexPath.row]
            
            LabelTree1.layer.cornerRadius = 15
            LabelTree1.layer.masksToBounds = true
            LabelTree2.layer.cornerRadius = 15
            LabelTree2.layer.masksToBounds = true
            LabelTree3.layer.cornerRadius = 15
            LabelTree4.layer.cornerRadius = 15
            LabelTree5.layer.cornerRadius = 15
            
            return cellWood
        }
        
        if collectionView == self.collectionViewForest {
            let cellForest = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellForest.imgImageForest.image = imageArrayForest[indexPath.row]
            
            LabelForest1.layer.cornerRadius = 15
            LabelForest1.layer.masksToBounds = true
            LabelForest2.layer.cornerRadius = 15
            LabelForest2.layer.masksToBounds = true
            LabelForest3.layer.cornerRadius = 15
            LabelForest4.layer.cornerRadius = 15
            
            return cellForest
        }
        
        if collectionView == self.collectionViewRiver {
            let cellRiver = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellRiver.imgImageRiver.image = imageArrayRiver[indexPath.row]
            
            LabelRiver1.layer.cornerRadius = 15
            LabelRiver1.layer.masksToBounds = true
            LabelRiver2.layer.cornerRadius = 15
            LabelRiver2.layer.masksToBounds = true
            LabelRiver3.layer.cornerRadius = 15
            LabelRiver4.layer.cornerRadius = 15
            LabelRiver5.layer.cornerRadius = 15
            
            return cellRiver
        }
        
        if collectionView == self.collectionViewRock {
            let cellRock = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellRock.imgImageRock.image = imageArrayRock[indexPath.row]
            
            LabelRock1.layer.cornerRadius = 15
            LabelRock1.layer.masksToBounds = true
            LabelRock2.layer.cornerRadius = 15
            LabelRock2.layer.masksToBounds = true
            LabelRock3.layer.cornerRadius = 15
            LabelRock4.layer.cornerRadius = 15
            
            return cellRock
        }
        
        if collectionView == self.collectionViewMountain {
            let cellMountain = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellMountain.imgImageMountain.image = imageArrayMountain[indexPath.row]
            
            LabelMountain1.layer.cornerRadius = 15
            LabelMountain1.layer.masksToBounds = true
            LabelMountain2.layer.cornerRadius = 15
            LabelMountain2.layer.masksToBounds = true
            LabelMountain3.layer.cornerRadius = 15
            LabelMountain4.layer.cornerRadius = 15
            
            return cellMountain
        }
        
        if collectionView == self.collectionViewSun {
            let cellSun = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellSun.imgImageSun.image = imageArraySun[indexPath.row]
            
            LabelSun1.layer.cornerRadius = 15
            LabelSun1.layer.masksToBounds = true
            LabelSun2.layer.cornerRadius = 15
            LabelSun2.layer.masksToBounds = true
            LabelSun3.layer.cornerRadius = 15
            LabelSun4.layer.cornerRadius = 15
            
            return cellSun
        }
        
        return UICollectionViewCell()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audioPathWood = Bundle.main.path(forResource: "Wood", ofType: "mp3")
            try woodPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathWood!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathForest = Bundle.main.path(forResource: "Forest", ofType: "mp3")
            try forestPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathForest!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathRiver = Bundle.main.path(forResource: "River", ofType: "mp3")
            try riverPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRiver!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathRock = Bundle.main.path(forResource: "Rock", ofType: "mp3")
            try rockPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRock!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathMountain = Bundle.main.path(forResource: "Mountain", ofType: "mp3")
            try mountainPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathMountain!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathSun = Bundle.main.path(forResource: "Sun", ofType: "mp3")
            try sunPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathSun!) as URL)
        }
        catch{
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
    @IBAction func woodPlay(_ sender: AnyObject) {
        woodPlay.play()
    }
    
    @IBAction func forestPlay(_ sender: AnyObject) {
        forestPlay.play()
    }
    
    @IBAction func riverPlay(_ sender: AnyObject) {
        riverPlay.play()
    }
    
    @IBAction func rockPlay(_ sender: AnyObject) {
        rockPlay.play()
    }
   
    @IBAction func mountainPlay(_ sender: AnyObject) {
        mountainPlay.play()
    }
    
    @IBAction func sunPlay(_ sender: AnyObject) {
        sunPlay.play()
    }
    
    
    @IBAction func clearDETwood(_ sender: Any) { AreaDETwood.clear()
    }
    
    @IBAction func clearDETforest(_ sender: Any) { AreaDETforest.clear()
    }
    
    @IBAction func clearDETriver(_ sender: Any) { AreaDETriver.clear()
    }
    
    @IBAction func clearDETrock(_ sender: Any) { AreaDETrock.clear()
    }
    
    @IBAction func clearDETmountain(_ sender: Any) { AreaDETmountain.clear()
    }
    
    @IBAction func clearDETsun(_ sender: Any) { AreaDETsun.clear()
    }
    
    
    @IBAction func Success(_ sender: Any) {
        AlertView.instance.showAlert(title: "Hooray!", message: "You made it!", alertType : .success)
    }
    
    @IBAction func Failure(_ sender: Any) {
        AlertView.instance.showAlert(title: "Oops!", message: "You've almost got it.", alertType : .failure)
    }
    
}
