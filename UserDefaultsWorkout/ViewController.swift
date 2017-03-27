//
//  ViewController.swift
//  UserDefaultsWorkout
//
//  Created by Yawo Echitey on 3/27/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var moneyTxt: UITextField!
    
    var defaults = UserDefaults.standard
    var MONEY_STD = "userMoney"
    let formatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Loading Money
        formatter.numberStyle = .currency
        if let money = defaults.value(forKey: MONEY_STD) as? Double {
            
            moneyLabel.text = formatter.string(from: NSNumber(value: money))
            
        }else{
            
            defaults.set(0.0, forKey: MONEY_STD)
            moneyLabel.text = formatter.string(from: NSNumber(value: 0.0))
            
        }
    }
    
    @IBAction func savePresses(_ sender: Any) {
    
        if moneyTxt.text != ""{
            if let moneyPrev = defaults.value(forKey: MONEY_STD) as? Double {
                
                if let moneyNext = Double(moneyTxt.text!){
                    
                    let total = moneyPrev + moneyNext
                    defaults.set(total, forKey: MONEY_STD)
                    
                    formatter.numberStyle = .currency
                    moneyLabel.text = formatter.string(from: NSNumber(value: total))
                    
                    moneyTxt.text = ""
                }
            }
        }
    }

}

