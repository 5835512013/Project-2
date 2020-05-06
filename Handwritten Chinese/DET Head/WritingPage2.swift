import UIKit
import AVFoundation
import AVKit

class WritingPage2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var LabelEye1: UILabel!
    @IBOutlet weak var LabelEye2: UILabel!
    @IBOutlet weak var LabelEye3: UIView!
    @IBOutlet weak var LabelEye4: UIView!
    
    @IBOutlet weak var LabelMouth1: UILabel!
    @IBOutlet weak var LabelMouth2: UILabel!
    @IBOutlet weak var LabelMouth3: UIView!
    @IBOutlet weak var LabelMouth4: UIView!
    
    @IBOutlet weak var LabelEar1: UILabel!
    @IBOutlet weak var LabelEar2: UILabel!
    @IBOutlet weak var LabelEar3: UIView!
    @IBOutlet weak var LabelEar4: UIView!
    
    @IBOutlet weak var collectionViewMu: UICollectionView!
    
    @IBOutlet weak var collectionViewMouth: UICollectionView!
    
    @IBOutlet weak var collectionViewEar: UICollectionView!
    
    @IBOutlet weak var AreaDETeye: DETeye!
    @IBOutlet weak var AreaDETmouth: DETmouth!
    @IBOutlet weak var AreaDETear: DETear!
    
    var eyePlay:AVAudioPlayer = AVAudioPlayer()
    var mouthPlay:AVAudioPlayer = AVAudioPlayer()
    var earPlay:AVAudioPlayer = AVAudioPlayer()
    var nosePlay:AVAudioPlayer = AVAudioPlayer()
    
    var imageArrayMu = [UIImage(named: "Mu-1"), UIImage(named: "Mu-2"), UIImage(named: "Mu-3"), UIImage(named: "Mu-4"), UIImage(named: "Mu-5")]
    
    var imageArrayMouth = [UIImage(named: "Mouth-1"), UIImage(named: "Mouth-2"), UIImage(named: "Mouth-3")]
    
    var imageArrayEar = [UIImage(named: "Ear-1"), UIImage(named: "Ear-2"), UIImage(named: "Ear-3"), UIImage(named: "Ear-4"), UIImage(named: "Ear-5") , UIImage(named: "Ear-6")]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionViewMu {
            return imageArrayMu.count
        }
        
        if collectionView == self.collectionViewEar {
            return imageArrayEar.count
        }
        
        return imageArrayMouth.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionViewMu {
            let cellMu = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellMu.imgImageMu.image = imageArrayMu[indexPath.row]
            
            LabelEye1.layer.cornerRadius = 15
            LabelEye1.layer.masksToBounds = true
            LabelEye2.layer.cornerRadius = 15
            LabelEye2.layer.masksToBounds = true
            LabelEye3.layer.cornerRadius = 15
            LabelEye4.layer.cornerRadius = 15
            
            return cellMu
        }
        
        if collectionView == self.collectionViewEar {
            let cellEar = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellEar.imgImageEar.image = imageArrayEar[indexPath.row]
            
            LabelEar1.layer.cornerRadius = 15
            LabelEar1.layer.masksToBounds = true
            LabelEar2.layer.cornerRadius = 15
            LabelEar2.layer.masksToBounds = true
            LabelEar3.layer.cornerRadius = 15
            LabelEar4.layer.cornerRadius = 15
            
            return cellEar
        }
        
        if collectionView == self.collectionViewMouth {
            let cellMouth = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cellMouth.imgImageMouth.image = imageArrayMouth[indexPath.row]
            
            LabelMouth1.layer.cornerRadius = 15
            LabelMouth1.layer.masksToBounds = true
            LabelMouth2.layer.cornerRadius = 15
            LabelMouth2.layer.masksToBounds = true
            LabelMouth3.layer.cornerRadius = 15
            LabelMouth4.layer.cornerRadius = 15
            
            return cellMouth
        }
        
        return UICollectionViewCell()
    }
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    var onePlay:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audioPathEye = Bundle.main.path(forResource: "Eye", ofType: "mp3")
            try eyePlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathEye!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathMouth = Bundle.main.path(forResource: "Mouth", ofType: "mp3")
            try mouthPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathMouth!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathEar = Bundle.main.path(forResource: "Ear", ofType: "mp3")
            try earPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathEar!) as URL)
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
    
    @IBAction func eyePlay(_ sender: AnyObject) {
        eyePlay.play()
    }
    
    @IBAction func mouthPlay(_ sender: AnyObject) {
        mouthPlay.play()
    }
    
    @IBAction func earPlay(_ sender: AnyObject) {
        earPlay.play()
    }
    
    
    @IBAction func clearDETeye(_ sender: Any) { AreaDETeye.clear()
    }
    
    @IBAction func clearDETmouth(_ sender: Any) { AreaDETmouth.clear()
    }
    
    @IBAction func clearDETear(_ sender: Any) { AreaDETear.clear()
    }
    
    
    @IBAction func Success(_ sender: Any) {
        AlertView.instance.showAlert(title: "Hooray!", message: "You made it!", alertType : .success)
    }
    
    @IBAction func Failure(_ sender: Any) {
        AlertView.instance.showAlert(title: "Oops!", message: "You've almost got it.", alertType : .failure)
    }
    
}
