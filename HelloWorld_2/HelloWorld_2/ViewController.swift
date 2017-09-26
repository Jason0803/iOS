//
//  ViewController.swift
//  HelloWorld_2
//
//  Created by Soo Young Choi on 1/7/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    // when clicked btn
    @IBAction func btnClicked(_ sender: Any) {
        label.text = "Button Clicked !"
        
        var btn = UIButton(frame: CGRect(x: 10, y: 300, width: 300, height: 200))
        
        btn.backgroundColor = UIColor.brown
        self.view.addSubview(btn)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

