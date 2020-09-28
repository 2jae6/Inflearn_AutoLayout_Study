//
//  ViewController.swift
//  Custom_Keyboard
//
//  Created by 1 on 2020/09/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
       let myKeyboardView =  loadNib?.first as! CustomKeyboard
        
        firstTextField.inputView = myKeyboardView
    }



}

