//
//  RMCharacterDetailViewController.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 23/7/24.
//

import UIKit

class RMCharacterDetailViewController: UIViewController {
    
    private let viewModel: RMCharacterDetailViewViewModel
    
    init(viewModel: RMCharacterDetailViewViewModel ) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = viewModel.title
    }

}
