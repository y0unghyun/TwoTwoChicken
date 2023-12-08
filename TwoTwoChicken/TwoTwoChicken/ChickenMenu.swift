import Foundation

class honeycombo: MenuDetailRef {
    var price: Double = 21.9
    var name: String = "허니콤보"
}

class redcombo: MenuDetailRef {
    var price: Double = 21.9
    var name: String = "레드콤보"
}

class halfcombo: MenuDetailRef {
    var price: Double = 22.9
    var name: String = "반반콤보"
}

class redwing: MenuDetailRef {
    var price: Double = 23.9
    var name: String = "레드윙"
}


class ChickenMenu: MenuRef {
    var totalPrice: Double = 0

    func printMenu() {
        print("""
              
              *-----------------------------------------------------------------------*
              |                      [TwoTwoChicken's Chicken MENU]                   |
              *-----------------------------------------------------------------------*
              | 1. 허니콤보        |₩ 21.9| 달달한 허니맛이 느껴지는 치킨                       |
              | 2. 레드콤보        |₩ 21.9| 한국인의 매운맛을 느낄 수 있는 맵싹한 치킨             |
              | 3. 반반콤보        |₩ 22.9| 일타 이피! 허니와 레드를 한 번에 즐길 수 있는 치킨      |
              | 4. 레드윙         |₩ 23.9| 날개만 먹는 너를 위해 준비했어 레드소스 날개치킨         |
              | 0. 메뉴 돌아가기    | 메인 메뉴판으로 돌아갑니다                                 |
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
                let item = honeycombo()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 2:
                let item = redcombo()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 3:
                let item = halfcombo()
                totalPrice += item.price
                print("\(item.name)를 골랐습니다. 가격은 \(item.price)입니다.")
            case 4:
                let item = redwing()
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

    }
}

class honeycombo : MenuDetailRef {
    var price: Double = 21.9
    var name: String = "허니콤보"
}

class redcombo : MenuDetailRef {
    var price: Double = 21.9
    var name: String = "레드콤보"
}

class halfcombo : MenuDetailRef {
    var price: Double = 22.9
    var name: String = "반반콤보"
}

class redwing : MenuDetailRef {
    var price: Double = 23.9
    var name: String = "레드윙"
}
