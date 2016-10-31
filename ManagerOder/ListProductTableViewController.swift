//
//  ListProductTableViewController.swift
//  ManagerOder
//
//  Created by Fun Life on 10/31/16.
//  Copyright © 2016 FunLife. All rights reserved.
//

import UIKit

class ListProductTableViewController: UITableViewController {
    
    var dataListProduct0 : [NSDictionary] = [NSDictionary]()
    var dataListProduct : [NSDictionary]  = [NSDictionary]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  data1 = ["img": "hoahong",
                      "name": "た商品の一覧を表示",
                      "text": "た商品の",
                      "monney": "10000$",
                      "number": "100"
        ]
        
        let  data2 = ["img": "hoahong",
                      "name": "た商品の一覧を表示",
                      "text": "た商品の",
                      "monney": "10000$",
                      "number": "100"
        ]
        let  data3 = ["img": "hoahong",
                      "name": "た商品の一覧を表示",
                      "text": "た商品の",
                      "monney": "10000$",
                      "number": "100"
        ]
        let  data4 = ["img": "hoahong",
                      "name": "た商品の一覧を表示",
                      "text": "た商品の",
                      "monney": "10000$",
                      "number": "100"
        ]
        let  data5 = ["img": "hoahong",
                      "name": "た商品の一覧を表示",
                      "text": "た商品の",
                      "monney": "10000$",
                      "number": "100"
        ]
        
        let  data0 = [
                      "name": "た商品の一覧を表示"]

        
        dataListProduct.append(data1 as NSDictionary)
        dataListProduct.append(data2 as NSDictionary)
        dataListProduct.append(data3 as NSDictionary)
        dataListProduct.append(data4 as NSDictionary)
        dataListProduct.append(data5 as NSDictionary)
        dataListProduct0.append(data0 as NSDictionary)
        
        tableView.separatorStyle = .none
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return dataListProduct0.count
        }
        if section == 1 {
            return 1
        }
        if section == 2 {
            return dataListProduct.count
        }
        if section == 3 {
            return 1
        } else {
            return dataListProduct.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "cellList1", for: indexPath) as! CellListProduct01
            cell.updateCell(dictionnary: dataListProduct0[indexPath.row])
            return cell
        }
        if indexPath.section == 1 {
            let headerCell = tableView.dequeueReusableCell(withIdentifier: "cellHeader1") as! CellHeader1
            headerCell.backgroundColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
            headerCell.lblHeader1.text =  "関与 - 関与"
            return headerCell
        }
        if indexPath.section == 2 {
            let cell2 = self.tableView.dequeueReusableCell(withIdentifier: "cellList2", for: indexPath) as! CellListproduct02
            cell2.updateCell02(dictionnary: dataListProduct[indexPath.row])
            return cell2
        }
            if indexPath.section == 3 {
                let headerCell2 = tableView.dequeueReusableCell(withIdentifier: "cellHeader2") as! CellHeader2
                headerCell2.backgroundColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
                headerCell2.lblHeader2.text =  "関与 - 関与"
                return headerCell2
        } else {
            let cell3 = self.tableView.dequeueReusableCell(withIdentifier: "cellList2", for: indexPath) as! CellListproduct02
               cell3.updateCell02(dictionnary: dataListProduct[indexPath.row])
              return cell3
        }
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 50
        }
        if indexPath.section == 1 {
            return 30
        }
        if indexPath.section == 2 {
            return 100
        }
        if indexPath.section == 3 {
            return 30
        }
        else {
            return 100
        }
    }
   
}
