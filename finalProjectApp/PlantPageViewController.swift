//
//  PlantPageViewController.swift
//  finalProjectApp
//
//  Created by lindsey hirano on 7/14/20.
//  Copyright © 2020 Lindsey Hirano. All rights reserved.
//

import UIKit

class PlantPageViewController: UIViewController {

    
    @IBOutlet weak var plantView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func grow1Tapped(_ sender: Any) {
        plantView.image = UIImage(named: "stage2")
    }
    
    @IBAction func grow2Tapped(_ sender: Any) {
        plantView.image = UIImage(named: "stage3")
    }
    
    @IBAction func grow3Tapped(_ sender: Any) {
        plantView.image = UIImage(named: "stage4")
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
