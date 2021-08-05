//
//  LiveUpdatesViewController.swift
//  MUNSA
//
//  Created by Eric Love on 7/28/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class LiveUpdatesViewController: UIViewController, WKUIDelegate, WKNavigationDelegate{
    
    var webView: WKWebView!
    
   
    override func loadView(){
        
        
       let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let url = URL(string: "https://www.isamunsa.org/munsaappupdates")!
        webView.load(URLRequest(url: url))
        
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        
    }
    
    
}
