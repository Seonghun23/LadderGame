//
//  UserInput.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct UserInput {
}

extension UserInput: UserInputType {
    func getHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = getUserInput()
        return Int(height) ?? 0
    }
    
    func getPlayerNames() -> [LadderPlayer] {
        print("참여할 사람 이름을 입력하세요.")
        let players = getUserInput()
        return players.split(separator: ",").map{String($0)}
    }
    
    private func getUserInput() -> String {
        return readLine() ?? ""
    }
    
    // 중복되는 코드들은 최대한 줄여보도록 노력해 보자
}
#warning("정님 코드리뷰 가이드")
/*
 UserInput 구현 내용이 전혀 없이 프로토콜을 확장한다고 해서 꼭 extension 으로 해야 하는 것은 아닙니다.
 struct 구현 부분이 비어있는 것도 어색한 느낌이 있습니다.

 예를 들어서 저라면 이렇게 구현할 것 같습니다.
 가장 추상화되어 있는 readLine() 동작을 조금씩 더 구체적인 동작으로 만들어서 구분할 것 같습니다.
 ~~~
 struct InputView {
     static private func read(with prompt: String) -> String {
         print(prompt)
         let value = readLine() ?? ""
         return value
     }
     
     static private func read(with prompt: String, default value: Int) -> Int {
         return Int(read(with: prompt)) ?? value
     }
     
     static func readNumberOfTry() -> Int {
         let count = read(with: "> 사다리 높이를 입력해주세요.\n> ", default: 0)
         return count
     }
     
     static func readCarNames() -> String {
         let names = read(with: "> 참여할 사람 이름을 입력하세요.\n> ")
         return names
     }
 }
 ~~~
 */
