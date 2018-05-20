//
//  ViewController.swift
//  Todoey
//
//  Created by Matias Hauge on 20.05.2018.
//  Copyright © 2018 Matias Hauge. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    // This is hardcoded
    let itemArray = ["Lage apper", "Bli en koder", "Tren hardt"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  // MARK - Tableview Datasource Methods
    // This creates three tableviewsections because of the itemarray-
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // This prints out the string directly to the console
        //print(itemArray[indexPath.row])
        
        // This gives it a bit of cool animation
        
        // This if statement does it posible to check and uncheck an checkmark inside the app
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

