//
//  ListViewController.swift
//  ShopStop
//
//  Created by Utkarsh Dixit on 28/3/20.
//  Copyright © 2020 Utkarsh Dixit. All rights reserved.
//

import UIKit

var list = ["Milk","Bread"]

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    
    
    @IBOutlet weak var myList: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default
            , reuseIdentifier: "items")
        
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            list.remove(at: indexPath.row)
            myList.reloadData()
        }
    }
    
     override func viewDidAppear(_ animated: Bool) {
        myList.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
