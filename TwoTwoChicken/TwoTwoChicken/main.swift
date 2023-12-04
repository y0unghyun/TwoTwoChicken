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
        print("1. Chickens      | 국내산 닭을 염지해 맛있게 조리한 치킨")
        print("2. Side Snacks   | 치킨과 함께 곁들이면 좋은 메뉴")
        print("3. Drinks        | 콜라, 사이다 등 다양한 음료 메뉴")
        print("4. Beers         | 치킨의 영원한 단짝, 시원한 맥주")
        print("0. 키오스크 종료    | 주문을 종료합니다.")
        
        guard var input = readLine() else {
            print("error")
            return
        } // 옵셔널 바인딩
        
        var intInput: Int? = Int(input) //
        
        if let intInput = intInput {
            // 입력으로 받은 번호에 따라서 세부 메뉴판 호출
        }
        // 따로 초기화 구문은 작성하지 않았습니다.
        // 나중에 소지금액 및 결제 단계에 들어서 작성할 예정 입니다.
    }
}
