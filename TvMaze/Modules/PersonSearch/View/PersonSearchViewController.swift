//
//  PersonSearchViewController.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 16/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit

class PersonSearchViewController: UIViewController {
    
    var presenter: PersonSearchPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyViewLoaded()
    }

}

extension PersonSearchViewController: PersonSearchViewInterface {
    
    func setupInitialView() {
        self.title = Text.SearchPerson.description
    }
    
    
}
