//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by g.semshchikov on 22.01.2023.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }

}
