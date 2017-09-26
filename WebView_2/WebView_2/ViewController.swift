//
//  ViewController.swift
//  WebView_2
//
//  Created by Soo Young Choi on 2/4/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var txtURL: UITextField!
    
    @IBAction func btnGo(_ sender: UIButton) {
        var inputURL = txtURL.text!
        self.webView.loadRequest(URLRequest(url: URL(string: inputURL)!))
        txtURL.text = ""
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtURL.delegate = self
        webView.delegate = self
        
        let google = "http://www.google.com"
        
        webView.loadRequest(URLRequest(url: URL(string: google)!))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

