//
//  ViewController.swift
//  Cross hierarchy Consttraints
//
//  Created by Moazzam Tahir on 28/07/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var button: UIButton!
    @IBOutlet var viewB: UIView!
    @IBOutlet var verticalConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //we need to remove the existing center vertical constraint of label
        viewB.removeConstraint(verticalConstraint)
        
        //now we need to add the constraint for label in order to center it respectively to the button center alignment.
        let constraint = NSLayoutConstraint(item: label!, attribute: .centerX, relatedBy: .equal, toItem: button!, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        self.view.addConstraint(constraint)
    }


}

