//
//  RMGetAllCharactersResponse.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 17/7/24.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMCharacter]
}
