//
//  Extension.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 18/7/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
