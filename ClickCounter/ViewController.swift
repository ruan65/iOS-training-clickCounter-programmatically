//
//  ViewController.swift
//  ClickCounter
//
//  Created by Andrey Rudenko on 07/01/2017.
//  Copyright © 2017 premiumapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        
        label.text = "0"
        label.textColor = UIColor.red
        self.view.addSubview(label)
        
        // MARK: Button
        
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.yellow, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCounter), for: UIControlEvents.touchUpInside)
        
        // MARK: Reset Button
        
        let resetButton = UIButton()

        resetButton.frame = CGRect.init(x: 100, y: 300, width: 150, height: 60)
        
        resetButton.setTitle("Reset counter", for: .normal)
        resetButton.setTitleColor(UIColor.darkText, for: .normal)
        
        view.addSubview(resetButton)
        
        resetButton.addTarget(self, action: #selector(ViewController.resetCounter), for: UIControlEvents.touchUpInside)
        
        // MARK: Decrement button
        
        let decrementButton = UIButton()

        decrementButton.frame = CGRect.init(x: 150, y: 350, width: 150, height: 60)
        
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.green, for: .normal)
        
        view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCounter), for: UIControlEvents.touchUpInside)
        
        
    }
    
    
    func incrementCounter() {
        count += 1
        label.text = "\(count)"
        toggleBackground()
    }
    
    func decrementCounter() {
        count -= 1
        label.text = "\(count)"
        toggleBackground()
    }
    
    func resetCounter() {
        count = 0
        label.text = "0"
        toggleBackground()
    }
    
    func toggleBackground() {
        view.backgroundColor = count % 2 == 0 ? UIColor.blue : UIColor.white
    }
}

