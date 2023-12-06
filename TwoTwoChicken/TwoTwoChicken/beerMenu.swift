//
//  beerMenu.swift
//  TwoTwoChicken
//
//  Created by 박민정 on 2023/12/05.
//

import Foundation

class beerMenu : Menu {
    override func printMenu() {
        //맥주 메뉴 출력
        print("1. Philsner       |W 3.9| 뒷맛이 쌉쌀하면서 깔끔한 가벼운 체코식 맥주")
        print("2. Weiss          |W 3.9| 진한 과일향과 부드러운 목넘김이 매력적인 밀맥주")
        print("3. Dunkles        |W 3.9| 달콤하고 고소한 향이 어우러져 진한 풍미가 일품인 흑맥주")
        print("4. Weissbockbier  |W 4.9| 깊이 있고 부드러운 과일향을 가진 고알콜맥주")
        print("0. 메뉴 돌아가기      | 메뉴판으로 돌아갑니다.")
        
        guard var input = readLine() else {
            print("error: 숫자를 적어주세요.")
            return
        } // 옵셔널 바인딩 (String? -> String)
        
        if let intInput = Int(input) {
            switch intInput {
            case 1:
                print("Philsner을 골랐습니다.")
                return
            case 2:
                print("Weiss을 골랐습니다")
                return
            case 3:
                print("Dunkles를 골랐습니다")
                return
            case 4:
                print("Weissbockbier을 골랐습니다")
                return
            case 0:
                print("이전 메뉴판으로 돌아갑니다!")
            default:
                print("error: 잘못된 입력입니다. 다시 한 번 세부 메뉴 번호를 입력해주세요.")
                print(printMenu())
            }
        }
        
    }
}
