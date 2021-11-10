//
//  DetailViewController.swift
//  MamedowAK_2.7
//
//  Created by FR on 10.11.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullname
        phoneLabel.text = "Person: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
