//
//  RMCharacterViewController.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 15/7/24.
//

import UIKit

/// Controller to show and search for character
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
