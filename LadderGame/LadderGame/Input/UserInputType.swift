//
//  UserInputType.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

// 프로토콜의 이름은 형용사로 표현하도록 애플이 가이드 하고 있다.
protocol UserInputType {
    func getHeight() -> Int
    func getPlayerNames() -> [LadderPlayer]
}
#warning("정님 코드리뷰 가이드")
/*
 주석으로 메모하신 것처럼 프로토콜에 대한 이름도 프로토콜을 채택해서 어떤 것을 하고 싶은지 의도를 설명하면 좋습니다.
 프로토콜을 선언할 때도 메소드끼리 정말 관련이 있는 것인지 고민해 볼 필요가 있습니다.
 두 메소드가 전혀 다른 의도와 목적을 가지고 있다면 프로토콜도 분리하는 것을 고려해야 합니다.
 참고하세요.
 */
