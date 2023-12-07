//
//  ChickenMenu.swift
//  TeamProject
//
//  Created by 김가빈 on 12/5/23.
//

import Foundation

class ChickenMenu : Menu {
    override func printMenu() {
        while true {
            print(" [치킨 메뉴] ")
            print("1. 허니콤보")
            print("2. 레드콤보")
            print("3. 반반콤보")
            print("4. 반반윙")
            print("5. 레드윙")
            print("6. 점보윙")
            print("7. 허니점보윙")
            print("0. 뒤로가기")
            
            guard let input = readLine(), let number = Int(input) else {
                print("error: 숫자를 적어주세요.")
                continue
            }
            
            switch number {
            case 1...7:
                print("선택된 치킨 메뉴: \(number)")
                return // 선택된 치킨 메뉴에 대한 추가 처리
            case 0:
                print("이전 메뉴판으로 돌아갑니다!")
                return
            default:
                print("error: 잘못된 입력입니다. 다시 한 번 세부 메뉴 번호를 입력해주세요.")
                print(printMenu())
            }
        }
    }
}
