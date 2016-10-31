//
//  Display07.swift
//  ManagerOder
//
//  Created by Fun Life on 10/31/16.
//  Copyright © 2016 FunLife. All rights reserved.
//

import UIKit

class Display07: UITableViewController {

    var dataDisplay01 : [NSDictionary] = [NSDictionary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cell01 = [
            "textDisplay01":"た商品の"]
        let cell02 = [
            "textDisplay01":"た商品の"]
        let cell03 = [
            "textDisplay01":"た商品の"]
        let cell04 = [
            "textDisplay01":"た商品の"]
        let cell05 = [
            "textDisplay01":"た商品の"]
        let cell06 = [
            "textDisplay01":"た商品の"]
        let cell07 = [
            "textDisplay01":"た商品の - た商品の - た商品の - た商品の - た商品の - た商品の - た商品の"]
        let cell08 = [
            "textDisplay01":"た商品の"]
        let cell09 = [
            "textDisplay01":"た商品の"]
        let cell010 = [
            "textDisplay01":"た商品の"]
        
        dataDisplay01.append(cell01 as NSDictionary)
        dataDisplay01.append(cell02 as NSDictionary)
        dataDisplay01.append(cell03 as NSDictionary)
        dataDisplay01.append(cell04 as NSDictionary)
        dataDisplay01.append(cell05 as NSDictionary)
        dataDisplay01.append(cell06 as NSDictionary)
        dataDisplay01.append(cell07 as NSDictionary)
        dataDisplay01.append(cell08 as NSDictionary)
        dataDisplay01.append(cell09 as NSDictionary)
        dataDisplay01.append(cell010 as NSDictionary)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        //
        tableView.estimatedRowHeight = 40
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataDisplay01.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cellDisplay07", for: indexPath) as! CellDisplay07
        cell.updateCell(dictionnary: dataDisplay01 [indexPath.row])
        return cell
    }

}
