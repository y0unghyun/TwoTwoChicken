//
//  drinkMenu.swift
//  TwoTwoChicken
//
//  Created by Joseph on 12/6/23.
//
import Foundation

class cola : MenuDetailRef {
    var price: Double = 2.5
    var name: String = "콜라"
}

class cider : MenuDetailRef {
    var price: Double = 2.5
    var name: String = "사이다"
}

class slushpodo : MenuDetailRef {
    var price: Double = 2.0
    var name: String = "슬러쉬 포도맛"
}

class slushorange : MenuDetailRef {
    var price: Double = 2.0
    var name: String = "슬러쉬 오렌지맛"
}

class soju : MenuDetailRef {
    var price: Double = 5.0
    var name: String = "소주"

}

class DrinkMenu: MenuRef {
    var totalPrice: Double = 0

    func printMenu() {
        // 음료 메뉴 출력
        print("""
              *------------------------------------------------------*
              |             [TwoTwoChicken's DRINK MENU]             |
              *------------------------------------------------------*
              | 1. 콜라              |₩ 2.5| 코카콜라, 펩시, 코카콜라 제로   |
              | 2. 사이다            |₩ 2.5| 칠성사이다, 스프라이트          |
              | 3. 슬러쉬 포도맛       |₩ 2.0|  달달하고 시원한 포도맛 슬러쉬    |
              | 4. 슬러쉬 오렌지맛      |₩ 2.0| 달달하고 시원한 오렌지맛 슬러쉬   |
              | 5. 소주              |₩ 5.0| 참이슬, 처음처럼, 새로, 진로    |
              | 0. 메뉴 돌아가기       | 메인 메뉴판으로 돌아갑니다             |
              *------------------------------------------------------*
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
                let item = cola()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 2:
                let item = cider()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 3:
                let item = slushpodo()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 4:
                let item = slushorange()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 5:
                let item = soju()
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
