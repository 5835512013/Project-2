import UIKit
import AVFoundation
import AVKit

class WritingPage4: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewUp: UICollectionView!
    @IBOutlet weak var collectionViewDown: UICollectionView!
    @IBOutlet weak var collectionViewRight: UICollectionView!
    @IBOutlet weak var collectionViewLeft: UICollectionView!
    
    
    @IBOutlet weak var AreaDETup: DETup!
    @IBOutlet weak var AreaDETdown: DETdown!
    @IBOutlet weak var AreaDETright: DETright!
    @IBOutlet weak var AreaDETleft: DETleft!
    
    
    var directionPlay:AVAudioPlayer = AVAudioPlayer()
    var upPlay:AVAudioPlayer = AVAudioPlayer()
    var downPlay:AVAudioPlayer = AVAudioPlayer()
    var rightPlay:AVAudioPlayer = AVAudioPlayer()
    var leftPlay:AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var LabelUp1: UILabel!
    @IBOutlet weak var LabelUp2: UILabel!
    @IBOutlet weak var LabelUp3: UIView!
    @IBOutlet weak var LabelUp4: UIView!
    
    @IBOutlet weak var LabelDown1: UILabel!
    @IBOutlet weak var LabelDown2: UILabel!
    @IBOutlet weak var LabelDown3: UIView!
    @IBOutlet weak var LabelDown4: UIView!
    
    @IBOutlet weak var LabelRight1: UILabel!
    @IBOutlet weak var LabelRight2: UILabel!
    @IBOutlet weak var LabelRight3: UIView!
    @IBOutlet weak var LabelRight4: UIView!
    
    @IBOutlet weak var LabelLeft1: UILabel!
    @IBOutlet weak var LabelLeft2: UILabel!
    @IBOutlet weak var LabelLeft3: UIView!
    @IBOutlet weak var LabelLeft4: UIView!
    
    
    var imageArrayUp = [UIImage(named: "Up1"), UIImage(named: "Up2"), UIImage(named: "Up3")]
    
    var imageArrayDown = [UIImage(named: "Down1"), UIImage(named: "Down2"), UIImage(named: "Down3")]
    
    var imageArrayRight = [UIImage(named: "Right1"), UIImage(named: "Right2"), UIImage(named: "Right3"), UIImage(named: "Right4"), UIImage(named: "Right5")]
    
    var imageArrayLeft = [UIImage(named: "Left1"), UIImage(named: "Left2"), UIImage(named: "Left3"), UIImage(named: "Left4"), UIImage(named: "Left5")]
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionViewUp {
            return imageArrayUp.count
        }
        
        if collectionView == self.collectionViewDown {
            return imageArrayDown.count
        }
        
        if collectionView == self.collectionViewRight {
            return imageArrayRight.count
        }

            return imageArrayLeft.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionViewUp {
            let cellUp = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellUp.imgImageUp.image = imageArrayUp[indexPath.row]
            
            LabelUp1.layer.cornerRadius = 15
            LabelUp1.layer.masksToBounds = true
            LabelUp2.layer.cornerRadius = 15
            LabelUp2.layer.masksToBounds = true
            LabelUp3.layer.cornerRadius = 15
            LabelUp4.layer.cornerRadius = 15
            
            return cellUp
        }
        
        if collectionView == self.collectionViewDown {
            let cellDown = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellDown.imgImageDown.image = imageArrayDown[indexPath.row]
            
            LabelDown1.layer.cornerRadius = 15
            LabelDown1.layer.masksToBounds = true
            LabelDown2.layer.cornerRadius = 15
            LabelDown2.layer.masksToBounds = true
            LabelDown3.layer.cornerRadius = 15
            LabelDown4.layer.cornerRadius = 15
            
            return cellDown
        }
        
        if collectionView == self.collectionViewRight {
            let cellRight = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellRight.imgImageRight.image = imageArrayRight[indexPath.row]
            
            LabelRight1.layer.cornerRadius = 15
            LabelRight1.layer.masksToBounds = true
            LabelRight2.layer.cornerRadius = 15
            LabelRight2.layer.masksToBounds = true
            LabelRight3.layer.cornerRadius = 15
            LabelRight4.layer.cornerRadius = 15
            
            return cellRight
        }
        
        if collectionView == self.collectionViewLeft {
            let cellLeft = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellLeft.imgImageLeft.image = imageArrayLeft[indexPath.row]
            
            LabelLeft1.layer.cornerRadius = 15
            LabelLeft1.layer.masksToBounds = true
            LabelLeft2.layer.cornerRadius = 15
            LabelLeft2.layer.masksToBounds = true
            LabelLeft3.layer.cornerRadius = 15
            LabelLeft4.layer.cornerRadius = 15
            
            return cellLeft
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
            let audioPathUp = Bundle.main.path(forResource: "Up", ofType: "mp3")
            try upPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathUp!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathDown = Bundle.main.path(forResource: "Down", ofType: "mp3")
            try downPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathDown!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathRight = Bundle.main.path(forResource: "Right", ofType: "mp3")
            try rightPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRight!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathLeft = Bundle.main.path(forResource: "Left", ofType: "mp3")
            try leftPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathLeft!) as URL)
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
    
    
    @IBAction func clearDETup(_ sender: Any) {
        AreaDETup.clear()
    }
    
    @IBAction func clearDETdown(_ sender: Any) {
        AreaDETdown.clear()
    }
    
    @IBAction func clearDETright(_ sender: Any) {
        AreaDETright.clear()
    }
    
    @IBAction func clearDETleft(_ sender: Any) {
        AreaDETleft.clear()
    }
    
    
    @IBAction func UpPlay(_ sender: AnyObject) {
        upPlay.play()
    }
    
    @IBAction func DownPlay(_ sender: AnyObject) {
        downPlay.play()
    }
    
    @IBAction func RightPlay(_ sender: AnyObject) {
        rightPlay.play()
    }
    
    @IBAction func LeftPlay(_ sender: AnyObject) {
        leftPlay.play()
    }
    
    
    
    @IBAction func Success(_ sender: Any) {
        AlertView.instance.showAlert(title: "Hooray!", message: "You made it!", alertType : .success)
    }
    
    @IBAction func Failure(_ sender: Any) {
        AlertView.instance.showAlert(title: "Oops!", message: "You've almost got it.", alertType : .failure)
    }
    
}
