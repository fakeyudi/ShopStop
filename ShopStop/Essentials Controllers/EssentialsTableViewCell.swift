//
//  EssentialsTableViewCell.swift
//  ShopStop
//
//  Created by Utkarsh Dixit on 27/3/20.
//  Copyright © 2020 Utkarsh Dixit. All rights reserved.
//

import UIKit

class EssentialsTableViewCell: UITableViewCell{
    
    @IBOutlet weak var myText: UILabel!
    
     override func awakeFromNib() {
         super.awakeFromNib()
         // Initialization code
     }

     override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)

         // Configure the view for the selected state
     }
    
}
