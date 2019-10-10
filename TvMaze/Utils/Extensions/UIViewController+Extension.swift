//
//  UIViewController+Extension.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit
import Kingfisher

extension UIViewController {
    
    func setImageFrom(_ url: String, _ imageView: UIImageView) {
        let urlResource = URL(string: url)!
        let processor = RoundCornerImageProcessor(cornerRadius: 20)
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(
            with: urlResource,
            placeholder: UIImage(named: "show-icon"),
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
        ])
        
    }
    
}
