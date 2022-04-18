//
//  ViewController.swift
//  WebviewSample
//
//  Created by Luís Santos on 18/04/22.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.globo.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures  = true
    }
}

