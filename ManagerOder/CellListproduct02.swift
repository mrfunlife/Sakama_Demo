//
//  CellListproduct.swift
//  ManagerOder
//
//  Created by Fun Life on 10/31/16.
//  Copyright © 2016 FunLife. All rights reserved.
//

import UIKit

class CellListproduct02: UITableViewCell {

    var number: Int?
    @IBOutlet weak var imgShowListProduct: UIImageView!
    @IBOutlet weak var lblNameShowListProduct: UILabel!
    @IBOutlet weak var lblTextShowListProduct: UILabel!
    @IBOutlet weak var lblShowTextMoney: UILabel!
    @IBOutlet weak var edtNumerShowListProduct: UITextField!
    
    
    @IBAction func btnIncrease(_ sender: AnyObject) {
        number = Int (edtNumerShowListProduct.text!)
        let btn = sender as! UIButton
        if btn.backgroundImage(for: UIControlState()) == UIImage(named: "tru") {
            if number! <= 0 {
                number = 0
            } else {
            number = number!  - 1
            }
        } else {
            number = number! + 1
        }
        edtNumerShowListProduct.text = String (number!)
    }

    func updateCell02 (dictionnary: NSDictionary) {
        imgShowListProduct.image = UIImage(named: (dictionnary["img"] as? String)!)
        lblNameShowListProduct.text = dictionnary["name"] as? String
        lblTextShowListProduct.text  = dictionnary["text"] as? String
        lblShowTextMoney.text = dictionnary["monney"] as? String
        edtNumerShowListProduct.text = dictionnary["number"] as? String
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
