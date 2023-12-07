//
//  drinkMenu.swift
//  TwoTwoChicken
//
//  Created by Joseph on 12/6/23.
//

import Foundation


class detailMenu {
    func drinkMenu() {
        print("[ 음료 메뉴 ]")
        print("1. 콜라         | W 2.5 | 코카콜라, 펩시, 코카콜라 제로")
        print("2. 사이다       | W 2.5 | 칠성사이다, 스프라이트")
        print("3. 슬러쉬 포도맛  | W 2.0 | 달달하고 시원한 포도맛 슬러쉬")
        print("4. 슬러쉬 오렌지맛 | W 2.0 | 달달하고 시원한 오렌지맛 슬러쉬")
        print("5. 소주         | W 5.0 | 참이슬, 처음처럼, 새로, 진로")
        print("0. 뒤로가기      | 뒤로가기")

        guard var input = readLine() else {
            print("error: 숫자를 적어주세요.")
            return
        } // 옵셔널 바인딩
    }

    func menuSelect(option: Int) {
        switch option {
        case 1:
            print("콜라")
            return
        case 2:
            print("사이다")
            return
        case 3:
            print("슬러쉬 포도맛")
            return
        case 4:
            print("슬러쉬 오렌지맛")
            return
        case 5:
            print("소주")
            return
        case 0:
            // 0을 선택하면 프로그램 종료
            exit(0)
        default:
            // 잘못된 선택에 대한 예외 처리
            print("잘못된 선택입니다. 다시 선택해주세요.")
        }
    }
}
