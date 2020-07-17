//
//  AddToDoViewController.swift
//  testToDoListOnMyOwn
//
//  Created by lindsey hirano on 7/16/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableTableViewController()

  
    @IBOutlet weak var titleTextField: UITextField!
    

    
    @IBOutlet weak var timeTextField: UITextField!
    
    
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
    
   
    
    @IBAction func addTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                  
                      let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
                      
                      
          //        let toDo = ToDo()
          //
                  if let titleText = titleTextField.text {
                      toDo.name = titleText
                  }
            if let titleTextt = timeTextField.text {
                 toDo.important = titleTextt
            }
            
            
          //        previousVC.toDos.append(toDo)
          //        previousVC.tableView.reloadData()
                 
                      try? context.save()
                      
              navigationController?.popViewController(animated: true)
              }
    }
    
}
