//
//  CellListProduct01.swift
//  ManagerOder
//
//  Created by Fun Life on 10/31/16.
//  Copyright © 2016 FunLife. All rights reserved.
//

import UIKit

class CellListProduct01: UITableViewCell {

    @IBOutlet weak var lblShowAdd: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateCell (dictionnary: NSDictionary) {
        lblShowAdd.text = dictionnary["name"] as? String
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
