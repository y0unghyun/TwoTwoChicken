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
//        print(" [TwoTwoChicken's MENU] ")
//        print("1. Chicken       | 국내산 닭을 염지해 맛있게 조리한 치킨")
//        print("2. Side Snack    | 치킨과 함께 곁들이면 좋은 메뉴")
//        print("3. Drink         | 콜라, 사이다 등 다양한 음료 메뉴")
//        print("4. Beer          | 치킨의 영원한 단짝, 시원한 맥주")
//        print("0. 키오스크 종료    | 주문을 종료합니다.")
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
                chickenMenu().printMenu()
            case 2:
                print("Side Snacks 메뉴로 이동합니다!")
                sideMenu().printMenu()
            case 3:
                print("Drink 메뉴로 이동합니다!")
                drinkMenu().printMenu()
            case 4:
                print("Beer 메뉴로 이동합니다!")
                beerMenu().printMenu()
            default:
                print("❗️ 입력이 잘못되었습니다. 다시 한 번 입력해주세요.")
                
            }
            print(printMenu())
        }
    }
    
    init() {
        printMenu()
    }
    func quitMenu() {
        print("🖥️ 키오스크를 종료합니다.")
    }
        // 따로 초기화 구문은 작성하지 않았습니다.
        // 나중에 소지금액 및 결제 단계에 들어서 작성할 예정 입니다.
        // 메인 메뉴 브랜치에서 작성한 파일입니다.

}



