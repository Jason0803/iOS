//
//  ViewController.swift
//  Switch
//
//  Created by Soo Young Choi on 1/7/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let point = 85
        
        switch point {
            case 90...100 :
                print("수")
            case 80..<90 :
                print("우")
            case 70..<80 :
                print("미")
            default :
                print("화이팅")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

