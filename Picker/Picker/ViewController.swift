//
//  ViewController.swift
//  Picker
//
//  Created by Soo Young Choi on 1/21/17.
//  Copyright © 2017 Jason Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource ,UIPickerViewDelegate {

    
    @IBOutlet weak var picker: UIPickerView!
    
    let pickerTitle: [[String]] = [["A", "B"], ["1", "2", "3", "4"]]
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        picker.dataSource = self
        picker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // dataSource : number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // dataSource : number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 2
        } else {
            return 4
        }
    }
    
    // UIPickerViewDelegate : title for picker items
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerTitle[component][row]
    }
    
    // UIPickerViewDelegate : called when an item from picker selected
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerTitle[component][row])
    }
}

