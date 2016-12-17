//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ryan Cloono on 17/12/2016.
//  Copyright © 2016 Ryan Cloono. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
        buyBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryField.isHidden = false
        zipLabel.isHidden = false
        zipField.isHidden = false
        buyBtn.isHidden = false
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
    }

}

