//__FILENAME__  was created on __DATE__

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
    
        // set ball number index
        randomBallNumber = Int.random(in: 0...4)
        
        // set image
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

