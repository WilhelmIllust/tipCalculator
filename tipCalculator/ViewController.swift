//
//  ViewController.swift
//  tipCalculator
//
//  Created by User11 on 2018/5/23.
//  Copyright © 2018年 WilhelmShen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func refreshResult(){
        if let bill = billValue.text, let tipPer = tipPercentage.text, let number = numberOfPeople.text{
            let tip = (bill as NSString).floatValue*(tipPer as NSString).floatValue/100
            let total = (bill as NSString).floatValue + tip
            if (number as NSString).floatValue != 0{
                let shared = total/(number as NSString).floatValue
                totalValue.text = NSString(format: "%.0f", total) as String
                tipValue.text = NSString(format: "%.0f", tip) as String
                sharedValue.text = NSString(format: "%.0f", shared) as String
            }else{
                let shared = total/1.0
                totalValue.text = NSString(format: "%.0f", total) as String
                tipValue.text = NSString(format: "%.0f", tip) as String
                sharedValue.text = NSString(format: "%.0f", shared) as String
            }
        }
    }
    @IBOutlet weak var totalValue: UILabel!
    
    @IBAction func numberOfpeopleOnchange(_ sender: Any) {
        refreshResult()
    }
    @IBAction func tipPercentageOnchange(_ sender: Any) {
        refreshResult()
    }
    @IBAction func billValueOnchange(_ sender: Any) {
        refreshResult()
    }

    @IBOutlet weak var sharedValue: UILabel!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var billValue: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

