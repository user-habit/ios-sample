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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
