//
//  SignUpViewController.swift
//  ShopStop
//
//  Created by Utkarsh Dixit on 25/3/20.
//  Copyright © 2020 Utkarsh Dixit. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
        Auth.auth().createUser(withEmail: username.text!, password: password.text!) { (user, error) in
            if user != nil{
                print ("User created")
                self.performSegue(withIdentifier: "Login1", sender: self)
            }
        }
        
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
