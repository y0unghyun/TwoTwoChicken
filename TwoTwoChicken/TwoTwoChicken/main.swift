//
//  main.swift
//  TwoTwoChicken
//
//  Created by 영현 on 12/4/23.
//

import Foundation

class Menu {
    func printChickenMenu() {
           print(" [치킨 메뉴] ")
           print("1. 허니콤보")
           print("2. 레드콤보")
           print("3. 반반콤보")
           print("4. 반반윙")
           print("5. 레드윙")
           print("6. 점보윙")
           print("7. 허니점보윙")
           print("0. 뒤로가기")
       }
    
    func printMenu() {
        // 메뉴 출력 부분
        print(" [TwoTwoChicken's MENU] ")
        print("1. Chickens      | 국내산 닭을 염지해 맛있게 조리한 치킨")
        print("2. Side Snacks   | 치킨과 함께 곁들이면 좋은 메뉴")
        print("3. Drinks        | 콜라, 사이다 등 다양한 음료 메뉴")
        print("4. Beers         | 치킨의 영원한 단짝, 시원한 맥주")
        print("0. 키오스크 종료    | 주문을 종료합니다.")
    
        guard let input = readLine(), let number = Int(input) else {
                    print("잘못된 입력입니다.")
                    return
        }
        
        switch number {
                case 1:
                    printChickenMenu()
                // 나머지 메뉴 구현
                case 0:
                    print("키오스크를 종료합니다.")
                    return
                default:
                    print("잘못된 입력입니다. 다시 입력해주세요.")
                }
        // 따로 초기화 구문은 작성하지 않았습니다.
        // 나중에 소지금액 및 결제 단계에 들어서 작성할 예정 입니다.
    }
}
