//
//  ViewController.swift
//  KOStudent
//
//  Created by Soo Young Choi on 9/22/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://192.168.0.100:8888/Kostudent/index.html")
        let urlRequest = URLRequest(url: url!)
        
        webView.loadRequest(urlRequest)
    }
}

