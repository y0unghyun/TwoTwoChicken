//
//  ChickenMenu.swift
//  TeamProject
//
//  Created by 김가빈 on 12/5/23.
//

import Foundation

class ChickenMenu {
    func printChickenMenu() {
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
                print("잘못된 입력입니다. 다시 입력해주세요.")
                continue
            }
            
            switch number {
            case 1...7:
                print("선택된 치킨 메뉴: \(number)")
                // 선택된 치킨 메뉴에 대한 처리
            case 0:
                return // 메인 메뉴로 돌아감
            default:
                print("메뉴를 잘못 누르셨습니다. 다시 눌러주세요!")
                
            }
        }
    }
}
