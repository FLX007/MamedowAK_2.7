//
//  PersonsTabBarController.swift
//  MamedowAK_2.7
//
//  Created by FR on 10.11.2021.
//

import UIKit

class PersonsTabBarController: UITabBarController {

    var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let firstNavigationVC = viewControllers?.first as? UINavigationController else { return }
        let contactsVC = firstNavigationVC.topViewController as! ContactsTableViewController
        contactsVC.persons = persons
        
        guard let secondNavigationVC = viewControllers?.last as? UINavigationController else { return }
        let detailsContactsVC = secondNavigationVC.topViewController as! ContactsTableViewController
        detailsContactsVC.persons = persons
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = tabBarController?.viewControllers?.first as? UINavigationController else { return }
        let contactsVC = navigationVC.topViewController as! ContactsTableViewController
        contactsVC.persons = persons
    }

}
