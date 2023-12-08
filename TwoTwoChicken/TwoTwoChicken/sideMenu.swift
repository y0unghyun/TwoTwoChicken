//
//  SIDEMENU.swift
//  TwoTwoChicken
//
//  Created by 영현 on 12/8/23.
//

//
//  sidemenu.swift
//
//
//
//  Created by t2023-m0032 on 12/8/23.
//

import Foundation

class fries : MenuDetailRef {
    var price: Double = 2.5
    var name: String = "케이준 감자튀김"
}

class wing : MenuDetailRef {
    var price: Double = 3.5
    var name: String = "버팔로윙"
}

class cheeseball : MenuDetailRef {
    var price: Double = 2.5
    var name: String = "치즈볼"
}

class colpop : MenuDetailRef {
    var price: Double = 3.5
    var name: String = "콜팝"
}


class SideMenu: MenuRef {
    var totalPrice: Double = 0

    func printMenu() {
        // 사이드 메뉴 출력
        print("""
                *------------------------------------------------------------*
                |             [TwoTwoChicken's SIDE MENU]                    |
                *------------------------------------------------------------*
                | 1. 케이준 감자튀김   |₩ 2.5| 깊게 튀겨 바삭하며 고소한 감자튀김.        |
                | 2. 버팔로윙        |₩ 3.5| 훈제 맛과 특별한 소스로 유명한 사이드.      |
                | 3. 치즈볼          |₩ 2.5| 고소한 맛과 쫄깃함 속 달달한 크림치즈.     |
                | 4. 콜팝           |₩ 3.5| 아이들이 밥안먹고 먹기만 하는 작은 친구들    |
                | 0. Finish        | 주문을 종료합니다.                           |
                *------------------------------------------------------------*
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
                let item = fries()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 2:
                let item = wing()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 3:
                let item = cheeseball()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 4:
                let item = colpop()
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
