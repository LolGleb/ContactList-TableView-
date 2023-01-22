//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by g.semshchikov on 22.01.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! PersonsListTableViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
