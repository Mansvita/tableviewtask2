//
//  Cell.swift
//  tableviewtask2
//
//  Created by MANSVITA on 01/09/22.
//

import UIKit

class Cell: UITableViewCell {

   
    
    
    @IBOutlet weak var lbl: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
