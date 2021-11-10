//
//  DetailContactsTableViewController.swift
//  MamedowAK_2.7
//
//  Created by FR on 10.11.2021.
//

import UIKit

class DetailContactsTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone.arrow.up.right.fill")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "envelope.fill")
        }
        cell.contentConfiguration = content
        
        return cell
    }
}
