//
//  ChickenMenu.swift
//  TeamProject
//
//  Created by 김가빈 on 12/5/23.
//

import Foundation

class ChickenMenu : MenuRef {
    func printMenu() {
        // 치킨 메뉴 출력
        print("""
              
              *-----------------------------------------------------------------------*
              |                      [TwoTwoChicken's Chicken MENU]                   |
              *-----------------------------------------------------------------------*
              | 1. 허니콤보        |W 21.9| 달달한 허니맛이 느껴지는 치킨                       |
              | 2. 레드콤보        |W 21.9| 한국인의 매운맛을 느낄 수 있는 맵싹한 치킨             |
              | 3. 반반콤보        |W 22.9| 일타 이피! 허니와 레드를 한 번에 즐길 수 있는 치킨      |
              | 4. 레드윙         |W 23.9| 날개만 먹는 너를 위해 준비했어 레드소스 날개치킨         |
              | 0. 메뉴 돌아가기    | 메인 메뉴판으로 돌아갑니다                                 |
              *-----------------------------------------------------------------------*
              """)

    }
    
    func choiceMenu() {

        guard let input = readLine(), let intInput = Int(input) else {
            print("error: 숫자를 적어주세요.")
            return
        }

        switch intInput {
        case 1:
            print("허니콤보를 골랐습니다.")
        case 2:
            print("레드콤보를 골랐습니다")
        case 3:
            print("반반콤보를 골랐습니다")
        case 4:
            print("레드윙를 골랐습니다")
        case 0:
            quitMenu()
        default:
            print("error: 잘못된 입력입니다. 다시 한 번 세부 메뉴 번호를 입력해주세요.")
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

