//
//  ViewController.swift
//  Calc_Stack_1
//
//  Created by 1 on 2020/08/26.
//  Copyright © 2020 wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UIView!
    
    
    @IBOutlet var bt1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultLabel.layer.cornerRadius = 50
        resultLabel.layer.masksToBounds = true
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        bt1.layer.cornerRadius = bt1.bounds.width / 2
    }

}

