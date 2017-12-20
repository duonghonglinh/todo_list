//
//  ViewController.swift
//  todo_list
//
//  Created by ADMIN on 12/20/17.
//  Copyright © 2017 ADMIN. All rights reserved.
//

import UIKit

class todoListViewController: UITableViewController {

    let itemArray = ["find", "destroy", "buy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // tableview datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todocell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let scr = storyboard?.instantiateViewController(withIdentifier: "mh3") as! mh3
        
        navigationController?.pushViewController(scr, animated: true)
        
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        
    }
    
}


