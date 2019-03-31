//
//  ThirdViewController.swift
//  多画面
//
//  Created by 方瑾 on 2019/1/21.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var text: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
  
        if text == "red" {
            self.view.backgroundColor = UIColor.red
        } else if text == "green" {
            self.view.backgroundColor = UIColor.green
        } else if text == "blue" {
            self.view.backgroundColor = UIColor.blue
        }

     
    }
    

   
    @IBAction func turnButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
