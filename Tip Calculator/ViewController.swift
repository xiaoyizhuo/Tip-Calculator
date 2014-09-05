//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Xiaomin Hu on 9/5/14.
//  Copyright (c) 2014 Xiaomin Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var btnClear: UIButton!
    @IBOutlet var btnDel: UIButton!
    @IBOutlet var btnDot: UIButton!
    @IBOutlet var btn0: UIButton!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn5: UIButton!
    @IBOutlet var btn6: UIButton!
    @IBOutlet var btn7: UIButton!
    @IBOutlet var btn8: UIButton!
    @IBOutlet var btn9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn0.layer.borderWidth = 0.3
        btn1.layer.borderWidth = 0.3
        btn2.layer.borderWidth = 0.3
        btn3.layer.borderWidth = 0.3
        btn4.layer.borderWidth = 0.3
        btn5.layer.borderWidth = 0.3
        btn6.layer.borderWidth = 0.3
        btn7.layer.borderWidth = 0.3
        btn8.layer.borderWidth = 0.3
        btn9.layer.borderWidth = 0.3
        btnClear.layer.borderWidth = 0.3
        btnDel.layer.borderWidth = 0.3
        btnDot.layer.borderWidth = 0.3
        self.navigationController.navigationBar.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

