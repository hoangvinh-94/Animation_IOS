//
//  ViewController.swift
//  Animations
//
//  Created by Brian Advent on 07/10/2016.
//  Copyright © 2016 Brian Advent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var btn2: NSLayoutConstraint!
    @IBOutlet weak var btn1: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.constant -= view.bounds.width
        btn2.constant -= view.bounds.width
        
    
    }
    var animationPerfomedOnce = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !animationPerfomedOnce
        {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations:
                { self.btn1.constant += self.view.bounds.width
                    self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations:
                { self.btn2.constant += self.view.bounds.width
                    self.view.layoutIfNeeded()
            }, completion: nil)
            animationPerfomedOnce = true
        }
    }

       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

