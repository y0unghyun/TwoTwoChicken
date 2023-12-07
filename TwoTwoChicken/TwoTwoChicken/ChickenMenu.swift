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
        print(print("""
              *-----------------------------------------------------------------------*
              |                      [TwoTwoChicken's Chicken MENU]                   |
              *-----------------------------------------------------------------------*
              | 1. 허니콤보        |W 21.9| 뒷맛이 쌉쌀하면서 깔끔한 가벼운 체코식 맥주             |
              | 2. 레드콤보        |W 21.9| 진한 과일향과 부드러운 목넘김이 매력적인 밀맥주          |
              | 3. 반반콤보        |W 22.9| 달콤하고 고소한 향이 어우러져 진한 풍미가 일품인 흑맥주    |
              | 4. 레드윙          |W 23.9| 깊이 있고 부드러운 과일향을 가진 고알콜맥주            |
              | 0. 메뉴 돌아가기     | 메인 메뉴판으로 돌아갑니다                                |
              *-----------------------------------------------------------------------*
 """))
      //      print(" [치킨 메뉴] ")
      //      print("1. 허니콤보")
      //      print("2. 레드콤보")
      //      print("3. 반반콤보")
      //      print("4. 레드윙")

            
        if let intInput = Int(input) {
            switch intInput {
            case 1:
                print("허니콤보를 골랐습니다.")
                return
            case 2:
                print("레드콤보를 골랐습니다")
                return
            case 3:
                print("반반콤보를 골랐습니다")
                return
            case 4:
                print("레드윙를 골랐습니다")
                return
            case 0:
                quitMenu()
            default:
                print("error: 잘못된 입력입니다. 다시 한 번 세부 메뉴 번호를 입력해주세요.")
                printMenu()
            }
        }
    }
    
    func quitMenu() {
        Menu().printMenu()
    }
}
