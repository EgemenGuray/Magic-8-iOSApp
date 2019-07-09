//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Egemen Ihsan Guray on 1/12/18.
//  Copyright © 2018 Egemen Ihsan Guray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumber: Int = 0

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Randomize at the start
        randomSelectBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func randomButton(_ sender: Any) {
        randomSelectBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        randomSelectBall()
    }
    
    func randomSelectBall(){
        randomNumber = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: ballArray[randomNumber])
    }

}

