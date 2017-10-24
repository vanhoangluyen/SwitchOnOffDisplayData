//
//  TableViewDataSource.swift
//  NavigationController
//
//  Created by Luyen on 10/11/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import Foundation
import UIKit
class DataSourceNum: NSObject, UITableViewDataSource {
    var arrayNumber = [Int](1...10)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        // #warning Incomplete implementation, return the number of rows
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(arrayNumber[indexPath.row])"
        // Configure the cell...
        
        return cell
    }
}
