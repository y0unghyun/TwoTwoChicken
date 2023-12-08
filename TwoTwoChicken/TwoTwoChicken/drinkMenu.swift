//
//  drinkMenu.swift
//  TwoTwoChicken
//
//  Created by Joseph on 12/6/23.
//
import Foundation

class DrinkMenu: MenuRef {
    
    func printMenu() {
        //음료 메뉴 출력
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
        guard let input = readLine(), let input = Int(input) else {
            
            print("error: 숫자를 적어주세요.")
            return
        } // 옵셔널 바인딩
        
        switch input {
        case 1:
            print("콜라를 골랐습니다.")
            return
        case 2:
            print("사이다를 골랐습니다.")
            return
        case 3:
            print("슬러쉬 포도맛을 골랐습니다.")
            return
        case 4:
            print("슬러쉬 오렌지맛을 골랐습니다.")
            return
        case 5:
            print("소주를 골랐습니다.")
            return
        case 0:
            quitMenu()
        default:
            // 잘못된 선택에 대한 예외 처리
            print("잘못된 선택입니다. 다시 선택해주세요.")
            printMenu()
        }
    }
    
    func quitMenu() {
        MainMenu().printMenu()
    }
    
    init() {
        printMenu()
    }
}

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
