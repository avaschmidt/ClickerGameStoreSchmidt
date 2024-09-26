import UIKit

class StoreViewController: UIViewController {
    
    @IBOutlet weak var powerUpOutlet: UILabel!

    @IBOutlet weak var errorOutlet: UILabel!
    
    @IBOutlet weak var pointsLabelOutlet: UILabel!
    
    var unlocked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
            
        pointsLabelOutlet.text = "Points: \(AppData.points)"
        powerUpOutlet.text = "Multiplier: \(AppData.multiplier)x Add: \(AppData.add)+"
        
      
    }
    
    
    @IBAction func AddMoreAction(_ sender: UIButton) {
        
        if AppData.points >= 20.0{
            errorOutlet.text = ""
            AppData.points = AppData.points - 20.0
            AppData.add = AppData.add + 1.0
        }
        else{
            errorOutlet.text = "Not Enough Points"
        }
        powerUpOutlet.text = "Multiplier: \(AppData.multiplier)x Add: \(AppData.add)+"
        pointsLabelOutlet.text = "Points: \(AppData.points)"
    }
    
    
    
    @IBAction func multiplyAction(_ sender: UIButton) {
        if AppData.points >= 50.0{
            errorOutlet.text = ""
            AppData.points = AppData.points - 50.0
            AppData.multiplier = AppData.multiplier + 1.0
        }
        else{
            errorOutlet.text = "Not Enough Points"
        }
        powerUpOutlet.text = "Multiplier: \(AppData.multiplier)x Add: \(AppData.add)+"
        pointsLabelOutlet.text = "Points: \(AppData.points)"
    }
    
    @IBAction func miniGameAction(_ sender: UIButton) {
        
        if unlocked == false{
            if AppData.points >= 500.0{
                unlocked = true
                errorOutlet.text = ""
                AppData.points = AppData.points - 500.0
                AppData.multiplier = AppData.multiplier + 1.0
            }
            else{
                errorOutlet.text = "Not Enough Points"
            }
        }
        else{
            errorOutlet.text = "Already Unlocked!"
        }
        powerUpOutlet.text = "Multiplier: \(AppData.multiplier)x Add: \(AppData.add)+"
        pointsLabelOutlet.text = "Points: \(AppData.points)"
    }
    
    
    
  

}
