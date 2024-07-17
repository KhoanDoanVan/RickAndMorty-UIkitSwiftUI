//
//  RMEpisode.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 16/7/24.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
