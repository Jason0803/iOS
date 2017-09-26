//
//  ViewController.swift
//  Operator_2
//
//  Created by Soo Young Choi on 1/7/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let num_1 = 100
        let num_2 = 200
        let num_3 = 300
        let num_4 = 400;
        
        let bool_1 = num_1 > num_2
        let bool_2 = num_3 <= num_4
        let bool_3 = num_2 == num_3
        
        print(bool_1)
        print(bool_2)
        print(bool_3)
        
        let str_1 = "123"
        if str_1 == "123"{
            print("str1 값은 : \(str_1)")
        }
        
        if num_1 != 10000{
            print("num_1 is not 10000. num_1 = \(num_1)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

