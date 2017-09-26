//
//  ViewController.swift
//  Tuple
//
//  Created by Soo Young Choi on 1/7/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func getTupleValue() -> (String, String, Int) {
        return ("문자열 데이터1", "문자열 데이터2", 700)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(getTupleValue())
        
        let (str1, str2, int1) = getTupleValue()
        print(str1)
        print(str2)
        print(int1)
        
        let (str3, str4, _) = getTupleValue()
        print(str3)
        print(str4)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

