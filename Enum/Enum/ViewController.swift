//
//  ViewController.swift
//  Enum
//
//  Created by Soo Young Choi on 1/7/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum CompassPoint {
        case North
        case South
        case East
        case West
        
    }
    
    enum Season {
        case Spring, Summer, Autumn, Winter
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var direction = CompassPoint.North
        print(direction) //North
        
        direction = .East
        print(direction) // East
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

