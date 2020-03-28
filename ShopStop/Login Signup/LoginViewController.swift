//
//  ViewController.swift
//  ShopStop
//
//  Created by Utkarsh Dixit on 25/3/20.
//  Copyright © 2020 Utkarsh Dixit. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var prompt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: username.text!, password: password.text!) { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "Login2", sender: self)
            }
            else{
                self.prompt.text = "ERROR: Please Enter again"
            }
        }
    }
    

}

