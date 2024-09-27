import UIKit

//MVP and Stretch 1 Complete
class MinigameViewController: UIViewController {
    
    @IBOutlet weak var guitarOutlet: UIImageView!
    
    
    @IBOutlet weak var bowOutlet: UIImageView!
    
    
    @IBOutlet weak var marioOutlet: UIImageView!
    
    
    
    @IBOutlet weak var edSillyOutlet: UIImageView!
    
    
    @IBOutlet weak var edHiOutlet: UIImageView!
    
    
    @IBOutlet weak var edHandsOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func edSillyDragAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc =  sender.location(in: view)
        edSillyOutlet.center = pannedLoc
        print("panning")
    }
    
    @IBAction func edHiDragAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc =  sender.location(in: view)
        edHiOutlet.center = pannedLoc
        print("panning")
    }
    
    
    @IBAction func edHandsUpDragAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc =  sender.location(in: view)
        edHandsOutlet.center = pannedLoc
        print("panning")
    }
    

    
    @IBAction func marioDragAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc =  sender.location(in: view)
        marioOutlet.center = pannedLoc
        print("panning")
    }
    
    
    @IBAction func bowDragAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc =  sender.location(in: view)
        bowOutlet.center = pannedLoc
        print("panning")
    }
    

    
    
    
    
    @IBAction func guitarDragAction(_ sender: UIPanGestureRecognizer) {
        var pannedLoc =  sender.location(in: view)
        guitarOutlet.center = pannedLoc
        print("panning")
    }
    
    
    
    
    
}
