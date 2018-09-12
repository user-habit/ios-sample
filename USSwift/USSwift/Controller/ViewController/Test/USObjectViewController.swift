//
//  USObjectViewController.swift
//  USSwift
//
//  Created by lotco on 2018. 9. 10..
//  Copyright © 2018년 lotco. All rights reserved.
//

import UIKit

class USObjectViewController: UIViewController {

    @IBOutlet var accessibilityIdentifierButton: UIButton!
    var buttonTouchCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        accessibilityIdentifierButton.accessibilityIdentifier = "Code Object ID"
    }
    
    @IBAction func actionButton(sender: AnyObject) {
        NSLog("touch Action Button");

        buttonTouchCount = buttonTouchCount + 1;
        UserHabit.setContentKey("Action Button Touch Count", value: String(buttonTouchCount))
    }
}
