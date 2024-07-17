//
//  RMLocation.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 16/7/24.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimenion: String
    let residents: [String]
    let url: String
    let created: String
}
