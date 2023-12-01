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
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightIsOn.toggle()
        
        if lightIsOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
}

