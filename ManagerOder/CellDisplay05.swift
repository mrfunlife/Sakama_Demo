//
//  CellDisplay05.swift
//  ManagerOder
//
//  Created by Fun Life on 10/31/16.
//  Copyright © 2016 FunLife. All rights reserved.
//

import UIKit

class CellDisplay05: UITableViewCell {

    @IBOutlet weak var lblDisplay05: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateCell (dictionnary: NSDictionary) {
        lblDisplay05.text = dictionnary["textDisplay01"] as? String
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
