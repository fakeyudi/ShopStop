//
//  AddItemViewController.swift
//  ShopStop
//
//  Created by Utkarsh Dixit on 28/3/20.
//  Copyright © 2020 Utkarsh Dixit. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var itemInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Add(_ sender: Any) {
        
        if itemInput.text != nil {
            list.append(itemInput.text!)
            itemInput.text = nil
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
