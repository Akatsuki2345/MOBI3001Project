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
        let controller = storyboard?.instantiateViewController(withIdentifier: "GameScreen") as! GameScreenViewController
        controller.text = inputname.text
        
        present(controller, animated: true, completion: nil)
        
    }
    
}

