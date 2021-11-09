//
//  DataManager.swift
//  MamedowAK_2.7
//
//  Created by FR on 10.11.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    var names = ["Bob", "Mary", "Cliff", "Amy"]
    var surnames = ["Smith", "White", "Marley", "Candy"]
    var phones = ["5551111", "5552222", "5553333", "5554444"]
    var email = ["5551111@gmail.com",
                 "5552222@gmail.com",
                 "5553333@gmail.com",
                 "5554444@gmail.com"]
    
    private init() {
        names = names.shuffled()
        surnames = surnames.shuffled()
        phones = phones.shuffled()
        email = email.shuffled()
    }
}
