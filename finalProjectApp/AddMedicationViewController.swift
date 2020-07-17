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
    if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

       // we are creating a new ToDoCD object here, naming it toDo
       let medication = MedicationCD(entity: MedicationCD.entity(), insertInto: context)
        
        
    //let medication = Medication()
    if let titleText = titleTextField.text {
      medication.name = titleText
      medication.time = titleText
    }
        try? context.save()
    //previousVC.medication.append(medication)
    //previousVC.tableView.reloadData()
    
    navigationController?.popViewController(animated: true)
  }
    }
}
