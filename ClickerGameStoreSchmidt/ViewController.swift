import UIKit

class ViewController: UIViewController {

    var points = 0.0
    var multiplier = 1.0
    var add = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
        
        
    @IBAction func storeTapAction(_ sender: UITapGestureRecognizer) {
        print("Store Clicked")
        performSegue(withIdentifier: "storeSegue", sender: self)
    }
    
    @IBAction func edTapAction(_ sender: UITapGestureRecognizer) {
        points = points + (add * multiplier)
    }
    
        
    
    

}

