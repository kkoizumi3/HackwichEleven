//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Kaci Koizumi on 11/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle:.alert)
                       
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
                       
        alert.addAction(action)
                       
        present(alert, animated: true, completion: nil)
        

        
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is: \(slider.value)")
        currentValue = Int((slider.value))
    }
}

