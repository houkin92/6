//
//  FirstViewController.swift
//  多画面
//
//  Created by 方瑾 on 2019/1/21.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit//view表示视图控制器中的视图层

//MVC设计模式：Model--数据层，View--视图层， Controller--视图控制器

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

    }
//    override func viewWillAppear(_ animated: Bool) {
//
//    }
//    override func viewWillLayoutSubviews() {
//
//    }
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
    
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//
//    }
//    override func viewDidAppear(_ animated: Bool) {
//
//    }
//

    @IBAction func toSecondPage(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecondSegue", sender: nil)
    }
    
    @IBAction func tothirdPage(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tothirdSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //判断通过segue的indentifier判断即将跳转的是哪个界面
        if segue.identifier == "toSecondSegue" {
            //对即将跳转的页面类 进行实例化（不要忘记强制转换成相应的页面类型）
            let secondPageVC = segue.destination as! SecondViewController
            //把想要的传送的值，存入下一页面的属性中
//            secondPageVC.textFormFirst = firstTextField.text!
            secondPageVC.lastPageVC = self
            
        } else if segue.identifier == "tothirdSegue" {
            let thirdPageVC = segue.destination as! ThirdViewController
            thirdPageVC.text = firstTextField.text!
        }
        //为画面跳转（通过segue的方式）进行准备    destination表示终点
    }
}
