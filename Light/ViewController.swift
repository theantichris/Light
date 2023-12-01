//
//  ViewController.swift
//  Light
//
//  Created by Christopher Lamm on 12/1/23.
//

import UIKit

class ViewController: UIViewController {
    enum State {
        case on, off
    }
    
    var state: State = .on
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBOutlet var lightButton: UIButton!
    
    fileprivate func updateUI() {
        switch state {
        case .on:
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        case .off:
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        state = (state == .on) ? .off : .on
        
        updateUI()
    }
}

