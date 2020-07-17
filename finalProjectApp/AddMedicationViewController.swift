//
//  AddMedicationViewController.swift
//  finalProjectApp
//
//  Created by Celine Boudaie on 7/16/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import UIKit

class AddMedicationViewController: UIViewController {
    var previousVC = MedicationTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  @IBAction func addTapped(_ sender: Any) {
    let medication = Medication()
    if let titleText = titleTextField.text {
      medication.name = titleText
      medication.time = titleText
    }
    previousVC.medication.append(medication)
    previousVC.tableView.reloadData()
  }

}
