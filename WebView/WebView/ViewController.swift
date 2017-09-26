//
//  ViewController.swift
//  WebView
//
//  Created by Soo Young Choi on 1/21/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    var inputURL: String = ""
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var txtURL: UITextField!
    @IBOutlet weak var btnPrev: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txtURL.delegate = self
        webView.delegate = self
        
        let google = "http://www.google.com"

        
        webView.loadRequest(URLRequest(url: URL(string: google)!))
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGo(_ sender: UIButton) {
        // "http"
        
        
        inputURL = txtURL.text!
        
        self.webView.loadRequest(URLRequest(url: URL(string: inputURL)!))
        txtURL.text = ""
    }
    
    @IBAction func webViewRefresh(_ sender: UIButton) {
        self.webView.reload()
    }
    
    
}


