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
    
    fileprivate func updateUI() {
        view.backgroundColor = (state == .on) ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        state = (state == .on) ? .off : .on
        
        updateUI()
    }
}

