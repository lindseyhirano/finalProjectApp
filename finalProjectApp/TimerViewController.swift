//
//  TimerViewController.swift
//  finalProjectApp
//
//  Created by Sophia Labrador on 7/16/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    var OurTimer = Timer()
    var TimerDisplayed = 0
    
    
    @IBOutlet weak var Label: UILabel!
    
    
    
    @IBAction func StartBTN(_ sender: Any) {
        OurTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    
    
    @IBAction func PauseBTN(_ sender: Any) {
        OurTimer.invalidate()
    }
    
    
    @IBAction func ResetBTN(_ sender: Any) {
        OurTimer.invalidate()
        TimerDisplayed = 0
        Label.text = "0"
    }
    
    @objc func Action() {

              TimerDisplayed += 1
              Label.text = String(TimerDisplayed)
          }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
