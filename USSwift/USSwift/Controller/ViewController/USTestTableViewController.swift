//
//  USTestTableViewController.swift
//  USSwift
//
//  Created by lotco on 2018. 9. 10..
//  Copyright © 2018년 lotco. All rights reserved.
//

import UIKit

class USTestTableViewController: UIViewController {
    let testViewControllerArray : Array = ["USObjectViewController",
                                             "USScrollViewController",
                                             "USTextViewController"];
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension USTestTableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!;
        cell.textLabel?.text = testViewControllerArray[indexPath.row]
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testViewControllerArray.count;
    }
}

extension USTestTableViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserHabit.setContentKey("셀 선택 번호", value: String(indexPath.row))
        
        let viewControllerName : String = testViewControllerArray[indexPath.row]
        let viewController : UIViewController! = self.storyboard?.instantiateViewController(withIdentifier:viewControllerName)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
