//
//  sidemenu.swift
//  
//
//  Created by t2023-m0032 on 12/8/23.
//

import Foundation

class SideMenu: MenuRef {
    
    func printMenu() {
        //매뉴 출력
        print("""

                *------------------------------------------------------------*
                |             [TwoTwoChicken's SIDE MENU]                    |
                *------------------------------------------------------------*
                | 1. 케이준 감자튀김   |W 2.5| 깊게 튀겨 바삭하며 고소한 감자튀김.        |
                | 2. 버팔로윙        |W 3.5| 훈제 맛과 특별한 소스로 유명한 사이드.      |
                | 3. 치즈볼          |W 2.5| 고소한 맛과 쫄깃함 속 달달한 크림치즈.     |
                | 4. 콜팝           |W 3.5| 아이들이 밥안먹고 먹기만 하는 작은 친구들    |
                | 0. Finish        | 주문을 종료합니다.                           |
                *------------------------------------------------------------*



""")
    }
    
    func choiceMenu() {
        
        guard var input = readLine(), let input = Int(input) else {
            print("error: 숫자를 적어주세요.")
            return
        } //옵셔널 바인딩
        
        switch input {
            
        case 1 "케이준 감자튀김":
            print("케이준 감자튀김을 선택 하였습니다.")
        case 2  "버팔로윙":
            print("버팔로윙을 선택 하였습니다.")
        case 3  "치즈볼"
            print("치즈볼을 선택 하였습니다.")
        case 4 "콜팝"
            print("콜팝을 선택 하였습니다.")
        case 0
            quitMenu()
            // 메뉴 선택 옵션 case (1 ~ 5, 0 = quitmenu)
            
        default:
            print("error: 잘못된 입력입니다. 다시 한 번 입력 해 주세요")
            printMenu()
            // 오류 메세지에 대한 알림
        }
    }
    
    
    
    func quitMenu() {
        Menu().printMenu()
    }
}

class fries : MenuDetailRef {
    var price: Double = 2.5
    var name: String = "케이준 감자튀김"
}

class wing : MenuDetailRef {
    var price: Double = 3.5
    var name: String = "버팔로윙"
}

class cheeseball : MenuDetailRef {
    var price: Double = 2.5
    var name: String = "치즈볼"
}

class colpop : MenuDetailRef {
    var price: Double = 3.5
    var name: String = "콜팝"
}
        
