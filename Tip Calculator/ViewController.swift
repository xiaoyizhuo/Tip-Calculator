//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Xiaomin Hu on 9/5/14.
//  Copyright (c) 2014 Xiaomin Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var labelCheckAmount: UILabel!
    @IBOutlet var labelTip: UILabel!
    @IBOutlet var labelTotalAmount: UILabel!
    
    @IBOutlet var labelPct: UILabel!
    
    @IBOutlet var sliderTipPct: UISlider!
    
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
        self.navigationController!.navigationBar.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateData() {
        var res = calculateTipsAndTotalAmount()
        labelTip.text = String(format: "%0.2f", res.tips)
        labelTotalAmount.text = String(format: "%0.2f", res.amount)
    }
    
    func calculateTipsAndTotalAmount() -> (tips:Double, amount:Double) {
        var str = NSString(string: labelCheckAmount.text!)
        var amount = str.doubleValue;

        var strPct = NSString(string: labelPct.text!.substringToIndex(advance(labelPct.text!.startIndex, countElements(labelPct.text!) - 1)))
        var pct:Double = strPct.doubleValue / 100.0;
        
        var tips = amount * pct;
        var totalAmount = amount + tips;
        
        return (tips, totalAmount)
    }
    
    func addCheckAmount(num:String) {
        if (countElements(labelCheckAmount.text!) > 5) {
            return;
        }
        if (num == "0") {
            if (labelCheckAmount.text! != "0") {
                labelCheckAmount.text! += num;
            }
        }
        else {
            if (labelCheckAmount.text! != "0") {
                labelCheckAmount.text! += num;
            }
            else {
                labelCheckAmount.text! = num;
            }
            
        }
        
        updateData()
    }
    
    func hasDot(str: String) -> Bool {
        for character in str {
            if character == "." {
                return true;
            }
        }
        return false
    }
    
    @IBAction func zeroBtnTouched(sender: UIButton) {
        addCheckAmount("0")
    }
    
    @IBAction func oneBtnTouched(sender: UIButton) {
        addCheckAmount("1")
    }
    
    @IBAction func twoBtnTouched(sender: UIButton) {
        addCheckAmount("2")
    }
    
    @IBAction func threeBtnTouched(sender: UIButton) {
        addCheckAmount("3")
    }
    
    @IBAction func fourBtnTouched(sender: UIButton) {
        addCheckAmount("4")
    }
    
    @IBAction func fiveBtnTouched(sender: UIButton) {
        addCheckAmount("5")
    }
    
    @IBAction func sixBtnTouched(sender: UIButton) {
        addCheckAmount("6")
    }
    
    @IBAction func sevenBtnTouched(sender: UIButton) {
        addCheckAmount("7")
    }
    
    @IBAction func eightBtnTouched(sender: UIButton) {
        addCheckAmount("8")
    }
    
    @IBAction func nineBtnTouched(sender: UIButton) {
        addCheckAmount("9")
    }
    
    @IBAction func dotBtnTouched(sender: UIButton) {
        if (countElements(labelCheckAmount.text!) > 5) {
            return;
        }
        
        if !hasDot(labelCheckAmount.text!) {
            labelCheckAmount.text! += ".";
        }
    }
    
    @IBAction func backspaceBtnTouched(sender: UIButton) {
        var length = countElements(labelCheckAmount.text!);
        if length > 1 {
            labelCheckAmount.text! = labelCheckAmount.text!.substringToIndex(advance(labelCheckAmount.text!.startIndex, countElements(labelCheckAmount.text!) - 1))
        }
        else {
            labelCheckAmount.text! = "0"
        }
        updateData()
    }
    
    @IBAction func cleanBtnTouched(sender: UIButton) {
        labelCheckAmount.text = "0";
        var res = calculateTipsAndTotalAmount()
        labelTip.text = String(format: "%0.2f", res.tips)
        labelTotalAmount.text = String(format: "%0.2f", res.amount)
    }
    
    
    @IBAction func sliderTouched(sender: UISlider) {
        labelPct.text = String(format: "%0.0f%%", sliderTipPct.value);
        updateData();
    }
    
}

