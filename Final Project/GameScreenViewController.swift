//
//  GameScreenViewController.swift
//  Final Project
//
//  Created by user215869 on 4/14/22.
//

import UIKit

class GameScreenViewController: UIViewController {
    
    var pokerkind = ["Club","Spade","Diamond","Heart"];
    var cardnumber = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    var newpokerkind = [""];
    var newcardnumber = [1];
    var housescore = 0;
    var userscore = 0;
    var usermoney = 0;
    var n = 0;
    var msg = "Winner is house";
    var msg2 = "You are the winner!";

    @IBOutlet weak var startbtn: UIButton!
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
    
    func shufflecard() {
        pokerkind.shuffle()
        cardnumber.shuffle()
        newpokerkind = pokerkind.shuffled()
        newcardnumber = cardnumber.shuffled()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Result", message: msg2, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert.addAction(dismissAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    func showAlert2() {
        let alert = UIAlertController(title: "Result", message: msg, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert.addAction(dismissAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func hit(_ sender: Any) {
        startbtn.isHidden = true
        shufflecard()
        
        housecard1.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[0])")
        housecard2.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[1])")
        housescore = newcardnumber[0] + newcardnumber[1]
        housescorelab.text = "\(housescore)"
        usercard1.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[2])")
        usercard2.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[3])")
        userscore = newcardnumber[2] + newcardnumber[3]
        userscorelab.text = "\(userscore)"
        n = 3
        if housescore > 21 && userscore < 21{
            usermoney = usermoney + 50
            showAlert()
            startbtn.isHidden = false
        } else if housescore >= userscore {
            usermoney = usermoney - 50
            showAlert2()
            startbtn.isHidden = false
        }
        if userscore > 21 && housescore < 21 {
            usermoney = usermoney - 50
            showAlert2()
            startbtn.isHidden = false
            self.navigationController?.viewControllers = [self]        }
    }
    
       
    
    
    @IBAction func hitafterstart(_ sender: Any) {
        shufflecard()
        
        usercard1.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[n+1])")
        userscore = userscore + newcardnumber[n+1]
        userscorelab.text = "\(userscore)"
        if userscore > 21 && userscore >= housescore {
            usermoney = usermoney - 50
            userscorelab.text = "\(userscore)"
            showAlert2()
            startbtn.isHidden = false        }
    }
    @IBAction func stay(_ sender: Any) {
        shufflecard()
        
        housecard1.image = UIImage(named: "Card\(newpokerkind[0])\(newcardnumber[n+1])")
        housescore = housescore + newcardnumber[n+1]
        housescorelab.text = "\(userscore)"
        if housescore > 21 && userscore <= 21 {
            usermoney = usermoney + 50
            housescorelab.text = "\(housescore)"
            showAlert()
            startbtn.isHidden = false        }
        
    }
    
}
