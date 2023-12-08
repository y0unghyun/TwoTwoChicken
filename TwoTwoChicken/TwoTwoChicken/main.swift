//
//  main.swift
//  TwoTwoChicken
//
//  Created by 영현 on 12/4/23.
//

import Foundation

protocol MenuRef {
    func printMenu()
    func choiceMenu()
    func quitMenu()
}


protocol MenuDetailRef {
    var price: Double { get set }
    var name: String { get }
}

let user = MainMenu()

user.choiceMenu()
