//
//  ViewController.swift
//  segmentedControl
//
//  Created by Soo Young Choi on 1/21/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        // imageView.image = UIImage(named: "rol_\(sender.selectedSegmentIndex).jpg")
        
        if let path = Bundle.main.path(forResource: "rol_\(sender.selectedSegmentIndex))", ofType: "jpg") {
            imageView.image = UIImage(contentsOfFile: Bundle.main.path(forResource: ""))
            
        }
    }
    
}

