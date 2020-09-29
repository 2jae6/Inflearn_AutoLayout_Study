//
//  ViewController.swift
//  Custom_Keyboard
//
//  Created by 1 on 2020/09/28.
//

import UIKit

class ViewController: UIViewController, CustomKeyboardDelegate {

    

    @IBOutlet weak var firstTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
       let myKeyboardView =  loadNib?.first as! CustomKeyboard
        myKeyboardView.delegate = self
        firstTextField.inputView = myKeyboardView
    }
    func keyboardTapped(str: String) {
        print(str)
        let oldNumber = Int(firstTextField.text!)
        var newNumber = Int(str)
        
        if str == "00" && oldNumber != nil{
            newNumber = oldNumber! * 100
        }
        
        if str == "000" && oldNumber != nil {
            newNumber = oldNumber! * 1000
        }
        
        
        if let hasNumber = newNumber{
            
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let formatted = numberFormatter.string(from: NSNumber(value: hasNumber))
            
            firstTextField.text = String(formatted!)
        }
        
        
    }
    


}

