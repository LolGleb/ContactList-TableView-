//
//  PersonsListTableViewController.swift
//  PersonsList
//
//  Created by g.semshchikov on 14.01.2023.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonDetailsViewController
            detailVC.person = persons[indexPath.row]
        }
    }

    // MARK: - Table view data source

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }
}
