//
//  USAlertViewController.swift
//  USSwift
//
//  Created by lotco on 2018. 9. 13..
//  Copyright © 2018년 lotco. All rights reserved.
//

import UIKit

class USAlertViewController: UIViewController {
    
    var selfViewController : USAlertViewController!
    
    override func viewWillAppear(_ animated: Bool) {
        UserHabit.setScreen(self, withName: "USAlertViewController")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        selfViewController = self;
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]

        print("야호  ",documentsPath)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlertButtonAction(_ sender: Any) {
        UserHabit.setScreen(self, withName:"경고창")
        
        let alertController = UIAlertController(title:"경고창",message:"경고!!", preferredStyle:UIAlertControllerStyle.alert)
        
        //UIAlertActionStye.destructive 지정 글꼴 색상 변경
        let okAction = UIAlertAction(title: "확인", style: UIAlertActionStyle.destructive){ (action: UIAlertAction) in
            UserHabit.setScreen(self, withName: "USAlertViewController")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController,animated: true,completion: nil)
    }
    
    @IBAction func showActionSheetButtonAction(_ sender: Any) {
        UserHabit.setScreen(self, withName:"ActionSheet")
        
        let alertController = UIAlertController(title:"경고창",message:"경고!!", preferredStyle:UIAlertControllerStyle.actionSheet)
        
        //UIAlertActionStye.destructive 지정 글꼴 색상 변경
        let okAction = UIAlertAction(title: "확인", style: UIAlertActionStyle.destructive){ (action: UIAlertAction) in
            UserHabit.setScreen(self, withName: "USAlertViewController")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController,animated: true,completion: nil)
    }
    
}
