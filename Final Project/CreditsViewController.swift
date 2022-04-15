//
//  CreditsViewController.swift
//  Final Project
//
//  Created by user215869 on 4/14/22.
//

import UIKit

class CreditsViewController: UIViewController {

    @IBOutlet weak var money: UILabel!
    var finalmoney: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        money.text = finalmoney
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
