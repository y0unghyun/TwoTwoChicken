//
//  beerMenu.swift
//  TwoTwoChicken
//
//  Created by 박민정 on 2023/12/05.
//

import Foundation

class Philsner: MenuDetailRef {
    var price: Double = 3.9
    var name: String = "Philsner"
}

class Weiss: MenuDetailRef {
    var price: Double = 3.9
    var name: String = "Weiss"
}

class Dunkles: MenuDetailRef {
    var price: Double = 3.9
    var name: String = "Dunkles"
}

class Weissbockbier: MenuDetailRef {
    var price: Double = 4.9
    var name: String = "Weissbockbier"
}

class BeerMenu: MenuRef {
    var totalPrice: Double = 0

    func printMenu() {
        print("""
              *-----------------------------------------------------------------------*
              |                      [TwoTwoChicken's BEER MENU]                      |
              *-----------------------------------------------------------------------*
              | 1. Philsner       |₩ 3.9| 뒷맛이 쌉쌀하면서 깔끔한 가벼운 체코식 맥주            |
              | 2. Weiss          |₩ 3.9| 진한 과일향과 부드러운 목넘김이 매력적인 밀맥주         |
              | 3. Dunkles        |₩ 3.9| 달콤하고 고소한 향이 어우러져 진한 풍미가 일품인 흑맥주   |
              | 4. Weissbockbier  |₩ 4.9| 깊이 있고 부드러운 과일향을 가진 고알콜맥주            |
              | 0. 메뉴 돌아가기      | 메인 메뉴판으로 돌아갑니다                               |
              *-----------------------------------------------------------------------*
 """)
    }
    
    func choiceMenu() {
        while true {
            guard let input = readLine(), let intInput = Int(input) else {
                print("error: 숫자를 적어주세요.")
                continue
            }

            switch intInput {
            case 1:
                let item = Philsner()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 2:
                let item = Weiss()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 3:
                let item = Dunkles()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 4:
                let item = Weissbockbier()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 0:
                print("현재까지 총 금액은 \(totalPrice)입니다.")
                quitMenu()
                return
            default:
                print("error: 잘못된 입력입니다. 다시 한 번 세부 메뉴 번호를 입력해주세요.")
                continue
            }
        }
    }

    func quitMenu() {
        // 메인 메뉴로 돌아가거나 프로그램을 종료하는 로직
    }
    
    init() {
        printMenu()
        choiceMenu()
    }
}

