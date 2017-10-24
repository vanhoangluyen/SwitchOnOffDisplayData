//
//  ViewController.swift
//  NavigationController
//
//  Created by Luyen on 10/11/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class SwitchOnOff: UIViewController  {
    @IBOutlet weak var SwitchState: UISwitch!
    @IBOutlet weak var tableView: UITableView!
    
    let getDelegate = SplitDelegate()
    let getDataSourceNum = DataSourceNum()
    let getDataSourceStr = DataSourceStr()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = getDelegate
        tableView.dataSource = getDataSourceNum
    }
  

    @IBAction func clickOnMe(_ sender: UISwitch) {
        if SwitchState.isOn {
            tableView.dataSource = getDataSourceNum
        } else {
            tableView.dataSource = getDataSourceStr
        }
        tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
