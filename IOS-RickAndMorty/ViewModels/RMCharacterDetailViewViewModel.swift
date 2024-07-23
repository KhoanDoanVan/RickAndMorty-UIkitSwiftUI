//
//  RMCharacterDetailViewViewModel.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 23/7/24.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
