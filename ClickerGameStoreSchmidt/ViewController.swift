import UIKit

class AppData{
    static var points = 0.0
    static var multiplier = 1.0
    static var add = 1.0
}

class ViewController: UIViewController {

    
    @IBOutlet weak var pointsOutlet: UILabel!
    var defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        var p = defaults.double(forKey: "points")
        AppData.points = p
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
    
    @IBAction func saveAction(_ sender: UIButton) {
        
        defaults.set(AppData.points, forKey: "points")
        
    }
    
        
    
    

}

