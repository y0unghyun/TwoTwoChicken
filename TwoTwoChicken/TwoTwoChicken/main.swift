//
//  main.swift
//  TwoTwoChicken
//
//  Created by 영현 on 12/4/23.
//

import Foundation

class Menu {
    func printMenu() {
        // 메뉴 출력 부분
        print(" [TwoTwoChicken's MENU] ")
        print("1. Chicken       | 국내산 닭을 염지해 맛있게 조리한 치킨")
        print("2. Side Snack    | 치킨과 함께 곁들이면 좋은 메뉴")
        print("3. Drink         | 콜라, 사이다 등 다양한 음료 메뉴")
        print("4. Beer          | 치킨의 영원한 단짝, 시원한 맥주")
        print("0. 키오스크 종료    | 주문을 종료합니다.")
        
        guard var input = readLine() else {
            print("error: 숫자를 적어주세요.")
            return
        } // 옵셔널 바인딩 (String? -> String)
        
        if let intInput = Int(input) {
            switch intInput {
//            case 1:
//                chickenMenu()
            case 0:
                print("키오스크를 종료합니다.")
                return
            case 1:
                print("Chicken 메뉴로 이동합니다!")
                return
            case 2:
                print("Side Snacks 메뉴로 이동합니다!")
                return
            case 3:
                print("Drink 메뉴로 이동합니다!")
                return
            case 4:
                print("Beer 메뉴로 이동합니다!")
                return
            default:
                print("error: 잘못된 입력입니다. 다시 한 번 세부 메뉴 번호를 입력해주세요.")
                print(printMenu())
            }
        }
        
        // 따로 초기화 구문은 작성하지 않았습니다.
        // 나중에 소지금액 및 결제 단계에 들어서 작성할 예정 입니다.
        
        // 메인 메뉴 브랜치에서 작성한 파일입니다.
    }
}

let start = Menu()

print(start.printMenu())
