//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

typealias LadderPlayer = String

// 프로토콜을 채택하여 구현해 보자
struct SingleLadderGame {
    var input: UserInputType?
    var output: OutputType?
    
    mutating func run() {
        guard let height = input?.getHeight() else { return }
        guard let players = input?.getPlayerNames() else { return }
        
        output?.printLadders(height: height, players: players)
    }
}
#warning("정님 코드리뷰 가이드")
/*
 SingleLadderGame 구조체가 input, output 까지 모두 포함하는 최상위 로직이라면
 입력 이후 직접 출력하는 게 아니라 사다리 게임 생성이나 핵심 로직을 처리하는 구조체가 있으면 좋겠습니다.
 */
