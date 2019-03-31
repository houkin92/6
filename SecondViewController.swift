//
//  SecondViewController.swift
//  多画面
//
//  Created by 方瑾 on 2019/1/21.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var secondTextFied: UITextField!
    
    
    
    var textFormFirst:String = ""
    var lastPageVC: FirstViewController?  //变量跟第一个页面的类类型一样
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        secondLabel.text = textFormFirst
        secondLabel.text = lastPageVC?.firstTextField.text
        


    }
    
    @IBAction func goBack(_ sender: UIButton) {
        lastPageVC?.firstTextField.text = secondTextFied.text
        dismiss(animated: true, completion: nil)   //Void没有返回值，如果函数没有参数的话(（）->Void)
        //animated 表示动画效果
    }
    

}
