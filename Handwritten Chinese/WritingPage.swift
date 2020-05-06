import UIKit
import AVFoundation
import AVKit


class WritingPage: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView3: UICollectionView!
    
    @IBOutlet weak var collectionView4: UICollectionView!

    @IBOutlet weak var collectionView5: UICollectionView!
    
    @IBOutlet weak var collectionView6: UICollectionView!
    
    @IBOutlet weak var LabelOne1: UILabel!
    @IBOutlet weak var LabelOne2: UILabel!
    @IBOutlet weak var LabelOne3: UIView!
    @IBOutlet weak var LabelOne4: UIView!
    
    @IBOutlet weak var LabelTwo1: UILabel!
    @IBOutlet weak var LabelTwo2: UILabel!
    @IBOutlet weak var LabelTwo3: UIView!
    @IBOutlet weak var LabelTwo4: UIView!
    
    @IBOutlet weak var LabelThree1: UILabel!
    @IBOutlet weak var LabelThree2: UILabel!
    @IBOutlet weak var LabelThree3: UIView!
    @IBOutlet weak var LabelThree4: UIView!
    
    @IBOutlet weak var LabelFour1: UILabel!
    @IBOutlet weak var LabelFour2: UILabel!
    @IBOutlet weak var LabelFour3: UIView!
    @IBOutlet weak var LabelFour4: UIView!
    
    @IBOutlet weak var LabelFive1: UILabel!
    @IBOutlet weak var LabelFive2: UILabel!
    @IBOutlet weak var LabelFive3: UIView!
    @IBOutlet weak var LabelFive4: UIView!
    
    @IBOutlet weak var LabelSix1: UILabel!
    @IBOutlet weak var LabelSix2: UILabel!
    @IBOutlet weak var LabelSix3: UIView!
    @IBOutlet weak var LabelSix4: UIView!
    
    @IBOutlet weak var LabelSeven1: UILabel!
    @IBOutlet weak var LabelSeven2: UILabel!
    @IBOutlet weak var LabelSeven3: UIView!
    @IBOutlet weak var LabelSeven4: UIView!
    
    @IBOutlet weak var LabelEight1: UILabel!
    @IBOutlet weak var LabelEight2: UILabel!
    @IBOutlet weak var LabelEight3: UIView!
    @IBOutlet weak var LabelEight4: UIView!
    
    @IBOutlet weak var LabelNine1: UILabel!
    @IBOutlet weak var LabelNine2: UILabel!
    @IBOutlet weak var LabelNine3: UIView!
    @IBOutlet weak var LabelNine4: UIView!
    
    @IBOutlet weak var LabelTen1: UILabel!
    @IBOutlet weak var LabelTen2: UILabel!
    @IBOutlet weak var LabelTen3: UIView!
    @IBOutlet weak var LabelTen4: UIView!
    
    
    var imageArray3 = [UIImage(named: "3-1"), UIImage(named: "3-2"), UIImage(named: "3-3")]
    
    var imageArray4 = [UIImage(named: "4-1"), UIImage(named: "4-2"), UIImage(named: "4-3"), UIImage(named: "4-4"), UIImage(named: "4-5")]
    
     var imageArray5 = [UIImage(named: "5-1"), UIImage(named: "5-2"), UIImage(named: "5-3"), UIImage(named: "5-4")]
    
    var imageArray6 = [UIImage(named: "6-1"), UIImage(named: "6-2"), UIImage(named: "6-3") , UIImage(named: "6-4")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionView3 {
            return imageArray3.count
        }
        
         if collectionView == self.collectionView4 {
            return imageArray4.count
        }
        
        if collectionView == self.collectionView5 {
            return imageArray5.count
        }
        
        return imageArray6.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView3 {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cell3.imgImage3.image = imageArray3[indexPath.row]
            return cell3
        }
        
        if collectionView == self.collectionView4 {
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
                cell4.imgImage4.image = imageArray4[indexPath.row]
            return cell4
        }
            
        if collectionView == self.collectionView5 {
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cell5.imgImage5.image = imageArray5[indexPath.row]
            return cell5
        }
        
        if collectionView == self.collectionView6 {
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier: "imageSi", for: indexPath) as! imageSi
            cell6.imgImage6.image = imageArray6[indexPath.row]
            return cell6
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
    var twoPlay:AVAudioPlayer = AVAudioPlayer()
    var threePlay:AVAudioPlayer = AVAudioPlayer()
    var fourPlay:AVAudioPlayer = AVAudioPlayer()
    var fivePlay:AVAudioPlayer = AVAudioPlayer()
    var sixPlay:AVAudioPlayer = AVAudioPlayer()
    var sevenPlay:AVAudioPlayer = AVAudioPlayer()
    var eightPlay:AVAudioPlayer = AVAudioPlayer()
    var ninePlay:AVAudioPlayer = AVAudioPlayer()
    var tenPlay:AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var AreaDETone: DETone!
    @IBOutlet weak var AreaDETtwo: DETtwo!
    @IBOutlet weak var AreaDETthree: DETthree!
    @IBOutlet weak var AreaDETfour: DETfour!
    @IBOutlet weak var AreaDETfive: DETfive!
    @IBOutlet weak var AreaDETsix: DETsix!
    @IBOutlet weak var AreaDETseven: DETseven!
    @IBOutlet weak var AreaDETeight: DETeight!
    @IBOutlet weak var AreaDETnine: DETnine!
    @IBOutlet weak var AreaDETten: DETten!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            if self.restorationIdentifier == "TOne" {
                LabelOne1.layer.cornerRadius = 15
                LabelOne1.layer.masksToBounds = true
                LabelOne2.layer.cornerRadius = 15
                LabelOne2.layer.masksToBounds = true
                LabelOne3.layer.cornerRadius = 15
                LabelOne4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TTwo" {
                LabelTwo1.layer.cornerRadius = 15
                LabelTwo1.layer.masksToBounds = true
                LabelTwo2.layer.cornerRadius = 15
                LabelTwo2.layer.masksToBounds = true
                LabelTwo3.layer.cornerRadius = 15
                LabelTwo4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TThree" {
                LabelThree1.layer.cornerRadius = 15
                LabelThree1.layer.masksToBounds = true
                LabelThree2.layer.cornerRadius = 15
                LabelThree2.layer.masksToBounds = true
                LabelThree3.layer.cornerRadius = 15
                LabelThree4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TFour" {
                LabelFour1.layer.cornerRadius = 15
                LabelFour1.layer.masksToBounds = true
                LabelFour2.layer.cornerRadius = 15
                LabelFour2.layer.masksToBounds = true
                LabelFour3.layer.cornerRadius = 15
                LabelFour4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TFive" {
                LabelFive1.layer.cornerRadius = 15
                LabelFive1.layer.masksToBounds = true
                LabelFive2.layer.cornerRadius = 15
                LabelFive2.layer.masksToBounds = true
                LabelFive3.layer.cornerRadius = 15
                LabelFive4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TSix" {
                LabelSix1.layer.cornerRadius = 15
                LabelSix1.layer.masksToBounds = true
                LabelSix2.layer.cornerRadius = 15
                LabelSix2.layer.masksToBounds = true
                LabelSix3.layer.cornerRadius = 15
                LabelSix4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TSeven" {
                LabelSeven1.layer.cornerRadius = 15
                LabelSeven1.layer.masksToBounds = true
                LabelSeven2.layer.cornerRadius = 15
                LabelSeven2.layer.masksToBounds = true
                LabelSeven3.layer.cornerRadius = 15
                LabelSeven4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TEight" {
                LabelEight1.layer.cornerRadius = 15
                LabelEight1.layer.masksToBounds = true
                LabelEight2.layer.cornerRadius = 15
                LabelEight2.layer.masksToBounds = true
                LabelEight3.layer.cornerRadius = 15
                LabelEight4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TNine" {
                LabelNine1.layer.cornerRadius = 15
                LabelNine1.layer.masksToBounds = true
                LabelNine2.layer.cornerRadius = 15
                LabelNine2.layer.masksToBounds = true
                LabelNine3.layer.cornerRadius = 15
                LabelNine4.layer.cornerRadius = 15
            }
            
            if self.restorationIdentifier == "TTen" {
                LabelTen1.layer.cornerRadius = 15
                LabelTen1.layer.masksToBounds = true
                LabelTen2.layer.cornerRadius = 15
                LabelTen2.layer.masksToBounds = true
                LabelTen3.layer.cornerRadius = 15
                LabelTen4.layer.cornerRadius = 15
            }
            
            do{
                let audioPath1 = Bundle.main.path(forResource: "one", ofType: "mp3")
                try onePlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath1!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath2 = Bundle.main.path(forResource: "two", ofType: "mp3")
                try twoPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath2!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath3 = Bundle.main.path(forResource: "three", ofType: "mp3")
                try threePlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath3!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath4 = Bundle.main.path(forResource: "four", ofType: "mp3")
                try fourPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath4!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath5 = Bundle.main.path(forResource: "five", ofType: "mp3")
                try fivePlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath5!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath6 = Bundle.main.path(forResource: "six", ofType: "mp3")
                try sixPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath6!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath7 = Bundle.main.path(forResource: "seven", ofType: "mp3")
                try sevenPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath7!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath8 = Bundle.main.path(forResource: "eight", ofType: "mp3")
                try eightPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath8!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath9 = Bundle.main.path(forResource: "nine", ofType: "mp3")
                try ninePlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath9!) as URL)
            }
            catch{
            }
            
            do{
                let audioPath10 = Bundle.main.path(forResource: "ten", ofType: "mp3")
                try tenPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath10!) as URL)
            }
            catch{
            }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

        @IBAction func clearDETone(_ sender: Any) {AreaDETone.clear()}

        @IBAction func celarDETtwo(_ sender: Any) {AreaDETtwo.clear()}
        
        @IBAction func clearDETthree(_ sender: Any) {AreaDETthree.clear()}
    
        @IBAction func clearDETfour(_ sender: Any) {AreaDETfour.clear()}
    
        @IBAction func clearDETfive(_ sender: Any) {AreaDETfive.clear()}
    
        @IBAction func clearDETsix(_ sender: Any) {AreaDETsix.clear()}
    
        @IBAction func clearDETseven(_ sender: Any) {AreaDETseven.clear()}
    
        @IBAction func clearDETeight(_ sender: Any) {AreaDETeight.clear()}
    
        @IBAction func clearDETnine(_ sender: Any) {AreaDETnine.clear()}
    
        @IBAction func clearDETten(_ sender: Any) {AreaDETten.clear()}
    
    
    
        
        @IBAction func onePlay(_ sender: AnyObject) {
            onePlay.play()
        }
        
        @IBAction func twoPlay(_ sender: AnyObject) {
            twoPlay.play()
        }
        
        @IBAction func threePlay(_ sender: AnyObject) {
            threePlay.play()
        }
        
        @IBAction func fourPlay(_ sender: AnyObject) {
            fourPlay.play()
        }
        
        @IBAction func fivePlay(_ sender: AnyObject) {
            fivePlay.play()
        }
        
        @IBAction func sixPlay(_ sender: AnyObject) {
            sixPlay.play()
        }
        
        @IBAction func sevenPlay(_ sender: AnyObject) {
            sevenPlay.play()
        }
        
        @IBAction func eightPlay(_ sender: AnyObject) {
            eightPlay.play()
        }
        
        @IBAction func ninePlay(_ sender: AnyObject) {
            ninePlay.play()
        }
        
        @IBAction func tenPlay(_ sender: AnyObject) {
            tenPlay.play()
        }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
        @IBAction func Success(_ sender: Any) {
            AlertView.instance.showAlert(title: "Hooray!", message: "You made it!", alertType : .success)
        }
        
        @IBAction func Failure(_ sender: Any) {
            AlertView.instance.showAlert(title: "Oops!", message: "You've almost got it.", alertType : .failure)
        }
        
}
