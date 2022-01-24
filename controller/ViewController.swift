//
//  ViewController.swift
//  tableviewwithdifferentsections
//
//  Created by Mac on 17/12/21.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 5
        case 1: return 4
        case 2: return 3
        case 3: return 2
        case 4: return 1
        default: return 6
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        title = "Table"
        
        
        if indexPath.section == 0{
            cell = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath)
        }
        else if indexPath.section == 1{
            cell = tableView.dequeueReusableCell(withIdentifier: "cellc", for: indexPath)
        }
        else if indexPath.section == 2{
            cell = tableView.dequeueReusableCell(withIdentifier: "cellb", for: indexPath)
        }else if indexPath.section == 3{
            cell = tableView.dequeueReusableCell(withIdentifier: "cellr", for: indexPath)
        }else if indexPath.section == 4{
            cell = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    
}

