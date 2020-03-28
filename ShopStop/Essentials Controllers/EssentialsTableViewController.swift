//
//  EssentialsTableViewController.swift
//  ShopStop
//
//  Created by Utkarsh Dixit on 28/3/20.
//  Copyright © 2020 Utkarsh Dixit. All rights reserved.
//

import UIKit

class EssentialsTableViewController: UITableViewController {

    let EssentialItems = ["Paneer","Milk","Bread","Butter","Spaghetti","Sauce","Vegetables"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          // #warning Incomplete implementation, return the number of rows
          return EssentialItems.count
      }

      
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! EssentialsTableViewCell
          cell.myText.text = EssentialItems[indexPath.row]

          // Configure the cell...

          return cell
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "EssentialsTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    

}
