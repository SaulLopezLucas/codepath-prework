//
//  SettingsViewController.swift
//  Prework
//
//  Created by Saul Lopez Lucas on 8/21/22.
//

import UIKit

class SettingsViewController: UIViewController {
  
    @IBOutlet weak var nightModeSwitch: UISwitch!
    
    @IBOutlet weak var customTipRateTextField: UITextField!
    
    @IBOutlet weak var customCopayerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTipRateTextField.keyboardType = UIKeyboardType.decimalPad
        
        customCopayerTextField.keyboardType = UIKeyboardType.decimalPad
    
    }
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func nightModeAction(_ sender: Any) {
        if nightModeSwitch.isOn {
            overrideUserInterfaceStyle = .dark
        }
        else if nightModeSwitch.isOn == false{
            overrideUserInterfaceStyle = .light
        }
        
    }
    
    
}
