//
//  ViewController.swift
//  Jason_0121
//
//  Created by Soo Young Choi on 1/21/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // var currentSelection: Int = 0
    
    @IBOutlet weak var radioButton: DLRadioButton!
    @IBOutlet weak var radioButton_2: DLRadioButton!
    @IBOutlet weak var radioButton_3: DLRadioButton!
    @IBOutlet weak var checkButton: DLRadioButton!
    @IBOutlet weak var btnOK: UIButton!
    
    @IBOutlet weak var imageViewer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        radioDisable()
        checkButton.isIconSquare = true
        radioButton.isMultipleSelectionEnabled = false
        imageViewer.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checClicked(_ sender: DLRadioButton) {
        if checkButton.isSelected {
            radioEnable()
        }
    }
    
    @IBAction func radioClicked(_ sender: DLRadioButton) {
        // currentSelection = Int(radioButton.currentTitle!)!
        
        if radioButton.isSelected {
            imageViewer.image = UIImage(named: "rol_1.jpg")
        } else if radioButton_2.isSelected {
            imageViewer.image = UIImage(named: "rol_2.jpg")
        } else {
            imageViewer.image = UIImage(named: "rol_3.jpg")
        }
        
        btnOK.isSelected = false
         // imageViewer.image = UIImage(named: "rol_\(Int(radioButton.currentTitle!)).jpg")
    }
    

    
    @IBAction func btnOKClicked(_ sender: UIButton) {
        // imageViewer.image = UIImage(named: "rol_\(currentSelection).jpg")
        checkButton.isSelected = false
        radioDisable()
        imageViewer.isHidden = false
        btnOK.isSelected = false
        
    }
    
    @IBAction func btnReset(_ sender: UIButton) {
        imageViewer.image = nil
    }
    
    func radioEnable() {
        radioButton.isEnabled = true
        radioButton_2.isEnabled = true
        radioButton_3.isEnabled = true
    }
    
    func radioDisable() {
        radioButton.isEnabled = false
        radioButton_2.isEnabled = false
        radioButton_3.isEnabled = false
        
        radioButton.isSelected = false
        radioButton_2.isSelected = false
        radioButton_3.isSelected = false
    }

}

