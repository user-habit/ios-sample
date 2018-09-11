//
//  USTestTableViewController.swift
//  USSwift
//
//  Created by lotco on 2018. 9. 10..
//  Copyright © 2018년 lotco. All rights reserved.
//

import UIKit

class USTestTableViewController: UIViewController {
    let testViewControllerArray : NSArray = ["USObjectViewController"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension USTestTableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!;
        cell.textLabel?.text = testViewControllerArray[indexPath.row] as? String;
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testViewControllerArray.count;
    }
}

extension USTestTableViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserHabit.setContentKey("셀 선택 번호", value: String(indexPath.row))
        let viewController : UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "USObjectViewController"))!
        self.navigationController?.pushViewController(viewController, animated: true);
    }
}
