//
//  PersonDetailViewController.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 21/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit

class PersonDetailView: UIViewController {
    
    var presenter: PersonDetailPresenterInterface?

    override func viewDidLoad() {
        self.title = "Detail"
        super.viewDidLoad()
    }

}

extension PersonDetailView: PersonDetailViewInterface {
    
}
