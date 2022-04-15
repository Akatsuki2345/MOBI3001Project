//
//  GameScreenViewController.swift
//  Final Project
//
//  Created by user215869 on 4/14/22.
//

import UIKit

class GameScreenViewController: UIViewController {


    @IBOutlet weak var userscorelab: UILabel!
    @IBOutlet weak var housescorelab: UILabel!
    
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
        var pokerkind = ["Club","Spade","Diamond","Heart"]
        pokerkind.shuffle()
        let newpokerkind = pokerkind.shuffled()
        var cardnumber = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        cardnumber.shuffle()
        let newcardnumber = cardnumber.shuffled()
        
        housecard1.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[0])")
        housecard2.image = UIImage(named: "Card\(newpokerkind[1])\(newcardnumber[1])")
        let housescore = newcardnumber[0] + newcardnumber[1]
        housescorelab.text = "\(housescore)"
        usercard1.image = UIImage(named: "Card\(newpokerkind[2])\(newcardnumber[2])")
        usercard2.image = UIImage(named: "Card\(newpokerkind[3])\(newcardnumber[3])")
        let userscore = newcardnumber[2] + newcardnumber[3]
        userscorelab.text = "\(userscore)"
    }
   
    @IBAction func hitafterstart(_ sender: Any) {
        
    }
    @IBAction func stay(_ sender: Any) {
        
    }
    
}
