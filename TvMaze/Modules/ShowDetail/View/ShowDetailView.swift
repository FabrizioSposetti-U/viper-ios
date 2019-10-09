//
//  ShowDetailView.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit

class ShowDetailView: UIViewController {
    
    var presenter: ShowDetailPresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyViewLoaded()
    }

}

extension ShowDetailView: ShowDetailViewInterface {
    
    func showShowDetail(forShow show: ShowViewModel) {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = show.name
        self.view.addSubview(label)
    }
    
    
}
