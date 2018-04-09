//
//  ViewController.swift
//  simpleTimer
//
//  Created by D7703_17 on 2018. 4. 9..
//  Copyright © 2018년 박금상. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      @IBOutlet weak var tl: UILabel!
      @IBOutlet weak var ts: UISwitch!
      var simpleTimer = Timer()
      
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            //switch off
            ts.setOn(false, animated: true)
      }

      
      @objc func updateTime(){
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "HH/mm/ss EEE"
            tl.text = formatter.string(from: date)
            
      }


      @IBAction func ts(_ sender: Any) {
            if ts.isOn == true {
                  simpleTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            } else{
                  simpleTimer.invalidate()
            }
      }
}

