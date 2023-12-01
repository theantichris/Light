//
//  ViewController.swift
//  Light
//
//  Created by Christopher Lamm on 12/1/23.
//

import UIKit

class ViewController: UIViewController {
    var lightIsOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBOutlet var lightButton: UIButton!
    
    fileprivate func updateUI() {
        if lightIsOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightIsOn.toggle()
        
        updateUI()
    }
}

