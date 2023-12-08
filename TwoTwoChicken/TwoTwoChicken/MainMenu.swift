//
//  MainMenu.swift
//  TwoTwoChicken
//
//  Created by 영현 on 12/5/23.
//

import Foundation


class MainMenu: MenuRef {

    func printMenu() {
        // 메뉴 출력 부분
        print("""

                *-------------------------------------------------*
                |             [TwoTwoChicken's MENU] |            |
                *-------------------------------------------------*
                | 1. Chickens      | 국내산 닭을 염지해 맛있게 조리한 치킨  |
                | 2. Side Snack    | 치킨과 함께 곁들이면 좋은 메뉴       |
                | 3. Drink         | 콜라, 사이다 등 다양한 음료 메뉴     |
                | 4. Beer          | 치킨의 영원한 단짝, 시원한 맥주      |
                | 0. Finish       | 주문을 종료합니다.                 |
                *-------------------------------------------------*
""")
    }
    

    func choiceMenu() {
        while true {
            guard let input = readLine(), let input = Int(input) else {
                print("❗️ 입력이 잘못되었습니다. 다시 한 번 입력해주세요.")
                continue
            }
            
            switch input {

            case 0:
                print("키오스크를 종료합니다.")
            case 1:
                print("Chicken 메뉴로 이동합니다!")
                ChickenMenu().choiceMenu()
            case 2:
                print("Side Snacks 메뉴로 이동합니다!")
                SideMenu().choiceMenu()
            case 3:
                print("Drink 메뉴로 이동합니다!")
                DrinkMenu().choiceMenu()
            case 4:
                print("Beer 메뉴로 이동합니다!")
                beerMenu().choiceMenu()
            default:
                print("❗️ 입력이 잘못되었습니다. 다시 한 번 입력해주세요.")
                
            }

            print(printMenu())
        }
    }
    
    func quitMenu() {
        print("🖥️ 키오스크를 종료합니다.")
    }
    
    init() {
        var userMoney: Double = 10.0
        var pocket: [String] = []
        printMenu()
    }
        // 메인 메뉴 브랜치에서 작성한 파일입니다.
}
