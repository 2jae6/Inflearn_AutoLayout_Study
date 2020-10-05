//
//  ViewController.swift
//  ExpendCell
//
//  Created by 1 on 2020/10/03.
//

import UIKit
class ExpandCell: UITableViewCell{
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
}


class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ExpandCell
        
        cell.descriptionLabel.text = "aaaaa"
        return cell
    }

    
}

