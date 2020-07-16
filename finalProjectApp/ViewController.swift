//
//  ViewController.swift
//  finalProjectApp
//
//  Created by lindsey hirano on 7/14/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate {
    
    @IBOutlet var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY at h:mm a"
        let string = formatter.string(from: date)
        print("\(string)")
    }

}


//Color Scheme Hex Values
//6B9080
//A4C3B2
//CCE3DE
//EAF4F4
//F6FFF8
