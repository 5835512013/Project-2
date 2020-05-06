import UIKit
import AVFoundation
import AVKit

class AlertView: UIView {
    static let instance = AlertView()
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titilelb: UILabel!
    @IBOutlet weak var messagelb: UILabel!
    @IBOutlet weak var DoneBtn: UIButton!
    
    override init(frame: CGRect){
    super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implement")
    }
    
    private func commonInit(){
        img.layer.cornerRadius = 30
        img.layer.borderColor = UIColor.white.cgColor
        img.layer.borderWidth = 2
        
        parentView.frame = CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    enum AlertType {
        case success
        case failure
    }
    
    func showAlert(title: String, message: String, alertType: AlertType){
        self.titilelb.text = title
        self.messagelb.text = message
        
        switch alertType {
        case .success:
            img.image = UIImage(named: "panda1")
            DoneBtn.backgroundColor = #colorLiteral(red: 0.1288577914, green: 0.9420104623, blue: 0.03989548236, alpha: 1)
        case .failure:
            img.image = UIImage(named: "panda2")
            DoneBtn.backgroundColor = #colorLiteral(red: 0.9779575467, green: 0.01133145019, blue: 0.08395875245, alpha: 1)
        }
        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
    @IBAction func Done(_ sender: Any) {
        parentView.removeFromSuperview()
    }
}
