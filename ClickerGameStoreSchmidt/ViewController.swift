import UIKit

class AppData{
    static var points = 500.0
    static var multiplier = 1.0
    static var add = 1.0
}

class ViewController: UIViewController {

    
    @IBOutlet weak var pointsOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsOutlet.text = "Points: \(AppData.points)"
       
    }
    
    
    @IBAction func tapEdAction(_ sender: UITapGestureRecognizer) {
        print("Ed Clicked")
        AppData.points = AppData.points + (AppData.add * AppData.multiplier)
        pointsOutlet.text = "Points: \(AppData.points)"
        
    }
    
    
    override func viewIsAppearing(_ animated: Bool) {
        pointsOutlet.text = "Points: \(AppData.points)"
    }
    
    
    @IBAction func storeTapAction(_ sender: UITapGestureRecognizer) {
        print("Store Clicked")
        performSegue(withIdentifier: "storeSegue", sender: self)
    }
    
    
        
    
    

}

