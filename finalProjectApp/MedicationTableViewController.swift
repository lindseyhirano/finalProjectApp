//
//  MedicationTableViewController.swift
//  finalProjectApp
//
//  Created by Celine Boudaie on 7/16/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import UIKit

class MedicationTableViewController: UITableViewController {

    var medication : [Medication] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        medication = createMedication()
    }
    func createMedication() -> [Medication] {

         let swift = Medication()
         swift.name = "Adderal"
         swift.time = "9 am"
         // important is set to false by default

         return [swift]
       }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medication.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let medication = Medication[indexPath.row]

        return cell
    }
   

   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddMedicationViewController {
           addVC.previousVC = self
         }
    }
    
   
}
