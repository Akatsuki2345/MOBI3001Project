//
//  GameScreenViewController.swift
//  Final Project
//
//  Created by user215869 on 4/14/22.
//

import UIKit

class GameScreenViewController: UIViewController {


    @IBOutlet weak var userscore: UILabel!
    @IBOutlet weak var housescore: UILabel!
    
    @IBOutlet weak var housecard1: UIImageView!
    
    @IBOutlet weak var housecard2: UIImageView!
    
    @IBOutlet weak var usercard2: UIImageView!
    @IBOutlet weak var usercard1: UIImageView!
    @IBOutlet weak var username: UILabel!
    var text: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        if text != nil {
            username.text = text
        }
    }
    
    @IBAction func hit(_ sender: Any) {
        
    }
   
    @IBAction func stay(_ sender: Any) {
        
    }
    
}
