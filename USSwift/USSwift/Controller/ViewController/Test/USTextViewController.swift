//
//  USTextViewController.swift
//  USSwift
//
//  Created by lotco on 2018. 9. 13..
//  Copyright © 2018년 lotco. All rights reserved.
//

import UIKit

class USTextViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserHabit.addScrollView("TextScrollView", scrollView: textView, rootViewController: self)
    }
}
