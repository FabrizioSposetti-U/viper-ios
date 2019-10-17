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
    
    func setImageFrom(_ url: String?, _ imageView: UIImageView, _ placeholder: UIImage) {
        guard let url = URL(string: url ?? "") else {
            imageView.image = placeholder
            return
        }
        let urlResource = url
        let processor = RoundCornerImageProcessor(cornerRadius: 20)
        imageView.kf.indicatorType = .activity
        imageView.kf.setImage(
            with: urlResource,
            placeholder: placeholder,
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
    }
    
    func showActivityIndicator(activityIndicator: UIActivityIndicatorView) {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = .blue
        self.view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
    }
    
}
