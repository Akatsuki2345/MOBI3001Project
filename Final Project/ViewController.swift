//
//  ViewController.swift
//  Final Project
//
//  Created by user215869 on 4/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    

    @IBAction func click(_ sender: Any) {
        let username = inputname.text ?? ""
        
    }
    
}

