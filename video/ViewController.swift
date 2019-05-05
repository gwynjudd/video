//
//  ViewController.swift
//  video
//
//  Created by Gwyn Judd on 6/05/19.
//  Copyright © 2019 Gwyn Judd. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView1: UIWebView!
    
    @IBOutlet weak var webView2: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var request = URLRequest(url: URL(string: "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video")!)
        
        webView1.loadRequest(request)
        webView2.load(request)
        
        webView1.scrollView.isScrollEnabled = true
        webView2.scrollView.isScrollEnabled = true
        
        webView1.mediaPlaybackRequiresUserAction = true
        webView2.configuration.mediaPlaybackRequiresUserAction = true
    }


}

