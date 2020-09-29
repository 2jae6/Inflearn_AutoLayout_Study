//
//  CustomKeyboard.swift
//  Custom_Keyboard
//
//  Created by 1 on 2020/09/28.
//

import UIKit
protocol CustomKeyboardDelegate {
    func keyboardTapped(str: String)
}

class CustomKeyboard: UIView {


    var delegate: CustomKeyboardDelegate?
    
    
    @IBAction func tapButton(_ sender: UIButton) {
        delegate?.keyboardTapped(str: sender.titleLabel!.text!)
    }
    

}
