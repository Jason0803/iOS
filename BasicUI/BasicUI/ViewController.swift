//
//  ViewController.swift
//  BasicUI
//
//  Created by Soo Young Choi on 1/21/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let size = UIScreen.main.bounds
        print(size)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Slider Changed
    @IBAction func sliderChanged(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            indicatorView.startAnimating()
        } else {
            indicatorView.stopAnimating()
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        progressView.progress = Float(sender.value)
    }

}

