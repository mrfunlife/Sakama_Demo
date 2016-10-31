//
//  CellDisplay02.swift
//  ManagerOder
//
//  Created by Fun Life on 10/31/16.
//  Copyright © 2016 FunLife. All rights reserved.
//

import UIKit

class CellDisplay02: UITableViewCell {

    @IBOutlet weak var lblDisplay02: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateCell (dictionnary: NSDictionary) {
        lblDisplay02.text = dictionnary["textDisplay01"] as? String
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}