import UIKit
import AVFoundation
import AVKit

class SetVob: UIViewController {
    
    @IBOutlet weak var imgImageMain: UIImageView!
    
    var image = UIImage()
    
    @IBOutlet weak var FaceLineEye: UIImageView!
    @IBOutlet weak var FaceEye: UILabel!
    @IBOutlet weak var FaceBtnEye: UIButton!
    
    @IBOutlet weak var FaceLineEar: UIImageView!
    @IBOutlet weak var FaceEar: UILabel!
    @IBOutlet weak var FaceBtnEar: UIButton!
    
    @IBOutlet weak var FaceLineMouth: UIImageView!
    @IBOutlet weak var FaceMouth: UILabel!
    @IBOutlet weak var FaceBtnMouth: UIButton!

    
    
    @IBOutlet weak var NatureLineTree: UIImageView!
    @IBOutlet weak var NatureTree: UILabel!
    @IBOutlet weak var NatureBtnTree: UIButton!
 
    @IBOutlet weak var NatureLineForest: UIImageView!
    @IBOutlet weak var NatureForest: UILabel!
    @IBOutlet weak var NatureBtnForest: UIButton!
    
    @IBOutlet weak var NatureLineRiver: UIImageView!
    @IBOutlet weak var NatureRiver: UILabel!
    @IBOutlet weak var NatureBtnRiver: UIButton!
    
    @IBOutlet weak var NatureLineRock: UIImageView!
    @IBOutlet weak var NatureRock: UILabel!
    @IBOutlet weak var NatureBtnRock: UIButton!
    
    @IBOutlet weak var NatureLineMountain: UIImageView!
    @IBOutlet weak var NatureMountain: UILabel!
    @IBOutlet weak var NatureBtnMountain: UIButton!
    
    @IBOutlet weak var NatureLineSun: UIImageView!
    @IBOutlet weak var NatureSun: UILabel!
    @IBOutlet weak var NatureBtnSun: UIButton!
    
    
    
    @IBOutlet weak var DirectLineUp: UIImageView!
    @IBOutlet weak var DirectUp: UILabel!
    @IBOutlet weak var DirectBtnUp: UIButton!
    
    @IBOutlet weak var DIrectLineDown: UIImageView!
    @IBOutlet weak var DirectDown: UILabel!
    @IBOutlet weak var DirectBtnDown: UIButton!
    
    @IBOutlet weak var DirectLineLeft: UIImageView!
    @IBOutlet weak var DirectLeft: UILabel!
    @IBOutlet weak var DirectBtnLeft: UIButton!
    
    @IBOutlet weak var DirectLineRight: UIImageView!
    @IBOutlet weak var DirectRight: UILabel!
    @IBOutlet weak var DirectBtnRight: UIButton!
    
    
    @IBOutlet weak var NumOne: UILabel!
    @IBOutlet weak var NumBtnOne: UIButton!
    
    @IBOutlet weak var NumTwo: UILabel!
    @IBOutlet weak var NumBtnTwo: UIButton!
    
    @IBOutlet weak var NumThree: UILabel!
    @IBOutlet weak var NumBtnThree: UIButton!
    
    @IBOutlet weak var NumFour: UILabel!
    @IBOutlet weak var NumBtnFour: UIButton!

    @IBOutlet weak var NumFive: UILabel!
    @IBOutlet weak var NumBtnFive: UIButton!
    
    @IBOutlet weak var NumSix: UILabel!
    @IBOutlet weak var NumBtnSix: UIButton!
    
    @IBOutlet weak var NumSeven: UILabel!
    @IBOutlet weak var NumBtnSeven: UIButton!
    
    @IBOutlet weak var NumEight: UILabel!
    @IBOutlet weak var NumBtnEight: UIButton!
    
    @IBOutlet weak var NumNine: UILabel!
    @IBOutlet weak var NumBtnNine: UIButton!
    
    @IBOutlet weak var NumTen: UILabel!
    @IBOutlet weak var NumBtnTen: UIButton!
    
    
    var numPlay:AVAudioPlayer = AVAudioPlayer()
    var headPlay:AVAudioPlayer = AVAudioPlayer()
    var naturePlay:AVAudioPlayer = AVAudioPlayer()
    
    var one2Play:AVAudioPlayer = AVAudioPlayer()
    var two2Play:AVAudioPlayer = AVAudioPlayer()
    var three2Play:AVAudioPlayer = AVAudioPlayer()
    var four2Play:AVAudioPlayer = AVAudioPlayer()
    var five2Play:AVAudioPlayer = AVAudioPlayer()
    var six2Play:AVAudioPlayer = AVAudioPlayer()
    var seven2Play:AVAudioPlayer = AVAudioPlayer()
    var eight2Play:AVAudioPlayer = AVAudioPlayer()
    var nine2Play:AVAudioPlayer = AVAudioPlayer()
    var ten2Play:AVAudioPlayer = AVAudioPlayer()
    
    var Eye2Play:AVAudioPlayer = AVAudioPlayer()
    var Ear2Play:AVAudioPlayer = AVAudioPlayer()
    var Mouth2Play:AVAudioPlayer = AVAudioPlayer()
    
    var Tree2Play:AVAudioPlayer = AVAudioPlayer()
    var Forest2Play:AVAudioPlayer = AVAudioPlayer()
    var River2Play:AVAudioPlayer = AVAudioPlayer()
    var Rock2Play:AVAudioPlayer = AVAudioPlayer()
    var Mountain2Play:AVAudioPlayer = AVAudioPlayer()
    var Sun2Play:AVAudioPlayer = AVAudioPlayer()
    
    var DirectPlay:AVAudioPlayer = AVAudioPlayer()
    var Up2Play:AVAudioPlayer = AVAudioPlayer()
    var Down2Play:AVAudioPlayer = AVAudioPlayer()
    var Left2Play:AVAudioPlayer = AVAudioPlayer()
    var Right2Play:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.restorationIdentifier == "SetNum" {
            NumOne.isHidden = true
            NumBtnOne.isHidden = true
            NumOne.layer.cornerRadius = 15
            NumOne.layer.masksToBounds = true
            
            NumTwo.isHidden = true
            NumBtnTwo.isHidden = true
            NumTwo.layer.cornerRadius = 15
            NumTwo.layer.masksToBounds = true
            
            NumThree.isHidden = true
            NumBtnThree.isHidden = true
            NumThree.layer.cornerRadius = 15
            NumThree.layer.masksToBounds = true
            
            NumFour.isHidden = true
            NumBtnFour.isHidden = true
            NumFour.layer.cornerRadius = 15
            NumFour.layer.masksToBounds = true
            
            NumFive.isHidden = true
            NumBtnFive.isHidden = true
            NumFive.layer.cornerRadius = 15
            NumFive.layer.masksToBounds = true
            
            NumSix.isHidden = true
            NumBtnSix.isHidden = true
            NumSix.layer.cornerRadius = 15
            NumSix.layer.masksToBounds = true
            
            NumSeven.isHidden = true
            NumBtnSeven.isHidden = true
            NumSeven.layer.cornerRadius = 15
            NumSeven.layer.masksToBounds = true
            
            NumEight.isHidden = true
            NumBtnEight.isHidden = true
            NumEight.layer.cornerRadius = 15
            NumEight.layer.masksToBounds = true
            
            NumNine.isHidden = true
            NumBtnNine.isHidden = true
            NumNine.layer.cornerRadius = 15
            NumNine.layer.masksToBounds = true
            
            NumTen.isHidden = true
            NumBtnTen.isHidden = true
            NumTen.layer.cornerRadius = 15
            NumTen.layer.masksToBounds = true
        }
        
        if self.restorationIdentifier == "SetBody" {
        FaceLineEye.isHidden = true
        FaceEye.isHidden = true
        FaceBtnEye.isHidden = true
        
        FaceLineEar.isHidden = true
        FaceEar.isHidden = true
        FaceBtnEar.isHidden = true
        
        FaceLineMouth.isHidden = true
        FaceMouth.isHidden = true
        FaceBtnMouth.isHidden = true
        }
        
        if self.restorationIdentifier == "SetNature" {
        NatureLineTree.isHidden = true
        NatureTree.isHidden = true
        NatureBtnTree.isHidden = true
        
        NatureLineForest.isHidden = true
        NatureForest.isHidden = true
        NatureBtnForest.isHidden = true
        
        NatureLineRiver.isHidden = true
        NatureRiver.isHidden = true
        NatureBtnRiver.isHidden = true
        
        NatureLineRock.isHidden = true
        NatureRock.isHidden = true
        NatureBtnRock.isHidden = true
        
        NatureLineMountain.isHidden = true
        NatureMountain.isHidden = true
        NatureBtnMountain.isHidden = true
        
        NatureLineSun.isHidden = true
        NatureSun.isHidden = true
        NatureBtnSun.isHidden = true
        }
        
        if self.restorationIdentifier == "SetDirection" {
            DirectLineUp.isHidden = true
            DirectUp.isHidden = true
            DirectBtnUp.isHidden = true
            
            DIrectLineDown.isHidden = true
            DirectDown.isHidden = true
            DirectBtnDown.isHidden = true
            
            DirectLineLeft.isHidden = true
            DirectLeft.isHidden = true
            DirectBtnLeft.isHidden = true
            
            DirectLineRight.isHidden = true
            DirectRight.isHidden = true
            DirectBtnRight.isHidden = true
        }
        
        do{
            let audioPathNum = Bundle.main.path(forResource: "Haoma", ofType: "mp3")
            try numPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathNum!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathHead = Bundle.main.path(forResource: "Face", ofType: "mp3")
            try headPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathHead!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathNature = Bundle.main.path(forResource: "Nature", ofType: "mp3")
            try naturePlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathNature!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathTree2 = Bundle.main.path(forResource: "Wood", ofType: "mp3")
            try Tree2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathTree2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathForest2 = Bundle.main.path(forResource: "Forest", ofType: "mp3")
            try Forest2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathForest2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathRiver2 = Bundle.main.path(forResource: "River", ofType: "mp3")
            try River2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRiver2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathRock2 = Bundle.main.path(forResource: "Rock", ofType: "mp3")
            try Rock2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRock2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathMountain2 = Bundle.main.path(forResource: "Mountain", ofType: "mp3")
            try Mountain2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathMountain2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathSun2 = Bundle.main.path(forResource: "Sun", ofType: "mp3")
            try Sun2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathSun2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathEye2 = Bundle.main.path(forResource: "Eye", ofType: "mp3")
            try Eye2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathEye2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathEar2 = Bundle.main.path(forResource: "Ear", ofType: "mp3")
            try Ear2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathEar2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathMouth2 = Bundle.main.path(forResource: "Mouth", ofType: "mp3")
            try Mouth2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathMouth2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathOne2 = Bundle.main.path(forResource: "one", ofType: "mp3")
            try one2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathOne2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathTwo2 = Bundle.main.path(forResource: "two", ofType: "mp3")
            try two2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathTwo2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathThree2 = Bundle.main.path(forResource: "three", ofType: "mp3")
            try three2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathThree2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathFour2 = Bundle.main.path(forResource: "four", ofType: "mp3")
            try four2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathFour2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathFive2 = Bundle.main.path(forResource: "five", ofType: "mp3")
            try five2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathFive2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathSix2 = Bundle.main.path(forResource: "six", ofType: "mp3")
            try six2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathSix2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathSeven2 = Bundle.main.path(forResource: "seven", ofType: "mp3")
            try seven2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathSeven2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathEight2 = Bundle.main.path(forResource: "eight", ofType: "mp3")
            try eight2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathEight2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathNine2 = Bundle.main.path(forResource: "nine", ofType: "mp3")
            try nine2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathNine2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathTen2 = Bundle.main.path(forResource: "ten", ofType: "mp3")
            try ten2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathTen2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathDirect = Bundle.main.path(forResource: "Direction", ofType: "mp3")
            try DirectPlay = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathDirect!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathUp2 = Bundle.main.path(forResource: "Up", ofType: "mp3")
            try Up2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathUp2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathDown2 = Bundle.main.path(forResource: "Down", ofType: "mp3")
            try Down2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathDown2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathLeft2 = Bundle.main.path(forResource: "Left", ofType: "mp3")
            try Left2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathLeft2!) as URL)
        }
        catch{
        }
        
        do{
            let audioPathRight2 = Bundle.main.path(forResource: "Right", ofType: "mp3")
            try Right2Play = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPathRight2!) as URL)
        }
        catch{
        }
        
    }
    
    
    @IBAction func NumEnOne(_ sender: Any) {
        NumOne.isHidden = false
        NumBtnOne.isHidden = false
    }
    
    @IBAction func NumEnTwo(_ sender: Any) {
        NumTwo.isHidden = false
        NumBtnTwo.isHidden = false
    }
    
    @IBAction func NumEnThree(_ sender: Any) {
        NumThree.isHidden = false
        NumBtnThree.isHidden = false
    }
    
    @IBAction func NumEnFour(_ sender: Any) {
        NumFour.isHidden = false
        NumBtnFour.isHidden = false
    }
    
    @IBAction func NumEnFive(_ sender: Any) {
        NumFive.isHidden = false
        NumBtnFive.isHidden = false
    }
    
    @IBAction func NumEnSix(_ sender: Any) {
        NumSix.isHidden = false
        NumBtnSix.isHidden = false
    }
    
    @IBAction func NumEnSeven(_ sender: Any) {
        NumSeven.isHidden = false
        NumBtnSeven.isHidden = false
    }
    
    @IBAction func NumEnEight(_ sender: Any) {
        NumEight.isHidden = false
        NumBtnEight.isHidden = false
    }
    
    @IBAction func NumEnNine(_ sender: Any) {
        NumNine.isHidden = false
        NumBtnNine.isHidden = false
    }
    
    @IBAction func NumEnTen(_ sender: Any) {
        NumTen.isHidden = false
        NumBtnTen.isHidden = false
    }
    
    
    @IBAction func FaceEnEye1(_ sender: Any) {
        FaceLineEye.isHidden = false
        FaceEye.isHidden = false
        FaceBtnEye.isHidden = false
        Eye2Play.play()
    }
    @IBAction func FaceEnEye2(_ sender: Any) {
        FaceLineEye.isHidden = false
        FaceEye.isHidden = false
        FaceBtnEye.isHidden = false
        Eye2Play.play()
    }
    
    @IBAction func FaceEnEar1(_ sender: Any) {
        FaceLineEar.isHidden = false
        FaceEar.isHidden = false
        FaceBtnEar.isHidden = false
        Ear2Play.play()
    }
    @IBAction func FaceEnEar2(_ sender: Any) {
        FaceLineEar.isHidden = false
        FaceEar.isHidden = false
        FaceBtnEar.isHidden = false
        Ear2Play.play()
    }
    
    @IBAction func FaceEnMouth1(_ sender: Any) {
        FaceLineMouth.isHidden = false
        FaceMouth.isHidden = false
        FaceBtnMouth.isHidden = false
        Mouth2Play.play()
    }
    
    
    
    @IBAction func NatureEnTree1(_ sender: Any) {
        NatureLineTree.isHidden = false
        NatureTree.isHidden = false
        NatureBtnTree.isHidden = false
        Tree2Play.play()
    }
    
    @IBAction func NatureEnForest1(_ sender: Any) {
        NatureLineForest.isHidden = false
        NatureForest.isHidden = false
        NatureBtnForest.isHidden = false
        Forest2Play.play()
    }
    
    @IBAction func NatureEnRiver1(_ sender: Any) {
        NatureLineRiver.isHidden = false
        NatureRiver.isHidden = false
        NatureBtnRiver.isHidden = false
        River2Play.play()
    }
    @IBAction func NatureEnRiver2(_ sender: Any) {
        NatureLineRiver.isHidden = false
        NatureRiver.isHidden = false
        NatureBtnRiver.isHidden = false
        River2Play.play()
    }
    @IBAction func NatureEnRiver3(_ sender: Any) {
        NatureLineRiver.isHidden = false
        NatureRiver.isHidden = false
        NatureBtnRiver.isHidden = false
        River2Play.play()
    }
    
    @IBAction func NatureEnRock1(_ sender: Any) {
        NatureLineRock.isHidden = false
        NatureRock.isHidden = false
        NatureBtnRock.isHidden = false
        Rock2Play.play()
    }
    
    @IBAction func NatureEnMountain1(_ sender: Any) {
        NatureLineMountain.isHidden = false
        NatureMountain.isHidden = false
        NatureBtnMountain.isHidden = false
        Mountain2Play.play()
    }
    @IBAction func NatureEnMountain2(_ sender: Any) {
        NatureLineMountain.isHidden = false
        NatureMountain.isHidden = false
        NatureBtnMountain.isHidden = false
        Mountain2Play.play()
    }
    @IBAction func NatureMountain3(_ sender: Any) {
        NatureLineMountain.isHidden = false
        NatureMountain.isHidden = false
        NatureBtnMountain.isHidden = false
        Mountain2Play.play()
    }
    @IBAction func NatureMountain4(_ sender: Any) {
        NatureLineMountain.isHidden = false
        NatureMountain.isHidden = false
        NatureBtnMountain.isHidden = false
        Mountain2Play.play()
    }
    
    
    @IBAction func NatureEnSun1(_ sender: Any) {
        NatureLineSun.isHidden = false
        NatureSun.isHidden = false
        NatureBtnSun.isHidden = false
        Sun2Play.play()
        
    }
  
    
    @IBAction func DirectUpEn(_ sender: Any) {
        DirectLineUp.isHidden = false
        DirectUp.isHidden = false
        DirectBtnUp.isHidden = false
        Up2Play.play()
    }
    
    @IBAction func DirectDownEn(_ sender: Any) {
        DIrectLineDown.isHidden = false
        DirectDown.isHidden = false
        DirectBtnDown.isHidden = false
        Down2Play.play()
    }
    
    @IBAction func DirectLeftEn(_ sender: Any) {
        DirectLineLeft.isHidden = false
        DirectLeft.isHidden = false
        DirectBtnLeft.isHidden = false
        Left2Play.play()
    }
    
    @IBAction func DirectRightEn(_ sender: Any) {
        DirectLineRight.isHidden = false
        DirectRight.isHidden = false
        DirectBtnRight.isHidden = false
        Right2Play.play()
    }
    
    
    
    
    @IBAction func numPlay(_ sender: AnyObject) {
        numPlay.play()
    }
    
    @IBAction func headPlay(_ sender: AnyObject) {
        headPlay.play()
    }
    
    @IBAction func naturePlay(_ sender: AnyObject) {
        naturePlay.play()
    }
    
    @IBAction func OnePlay(_ sender: AnyObject) {
        one2Play.play()
    }
    
    @IBAction func TwoPlay(_ sender: AnyObject) {
        two2Play.play()
    }
    
    @IBAction func ThreePlay(_ sender: AnyObject) {
        three2Play.play()
    }
    
    @IBAction func FourPlay(_ sender: AnyObject) {
        four2Play.play()
    }
    
    @IBAction func FivePlay(_ sender: AnyObject) {
        five2Play.play()
    }
    
    @IBAction func SixPlay(_ sender: AnyObject) {
        six2Play.play()
    }
    
    @IBAction func SevenPlay(_ sender: AnyObject) {
        seven2Play.play()
    }
    
    @IBAction func EightPlay(_ sender: AnyObject) {
        eight2Play.play()
    }
    
    @IBAction func NinePlay(_ sender: AnyObject) {
        nine2Play.play()
    }
    
    @IBAction func Tenplay(_ sender: Any) {
        ten2Play.play()
    }
    
    @IBAction func DirectionPlay(_ sender: AnyObject) {
        DirectPlay.play()
    }
    
    
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var shouldAutorotate: Bool {
        return false
    }

}
