//
//  TableViewDataSource2.swift
//  NavigationController
//
//  Created by Luyen on 10/11/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import Foundation
import UIKit
class DataSourceStr: NSObject , UITableViewDataSource {
    var arrayString = ["Nhất" , "Nhị", "Tam" , "Tứ" , "Ngũ" , "Lục", "Thất", "Bát","Cửu","Thập"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(arrayString[indexPath.row])"
        // Configure the cell...
        
        return cell
    }
    
    
}
