//
//  USWKWebViewController.swift
//  USSwift
//
//  Created by lotco on 2018. 9. 14..
//  Copyright © 2018년 lotco. All rights reserved.
//

import UIKit
import WebKit

class USWKWebViewController: UIViewController {

    @IBOutlet weak var wkWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wkWebView.load(URLRequest(url: URL(string:"https://userhabit.io")!))
        wkWebView.navigationDelegate = self;
        UserHabit.addScrollView("WKWebView", scrollView: wkWebView.scrollView, rootViewController: self)
    }
}

extension USWKWebViewController:WKNavigationDelegate{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        UserHabit.addWebView(webview: wkWebView)
        print("wkwebview loading finish")
    }
}
