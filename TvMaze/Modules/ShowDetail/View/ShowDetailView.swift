//
//  ShowDetailView.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit
import Kingfisher

class ShowDetailView: UIViewController {
    
    var presenter: ShowDetailPresenterInterface?
    @IBOutlet weak var lblShowTitle: UILabel!
    @IBOutlet weak var lblShowSummary: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyViewLoaded()
    }

}

extension ShowDetailView: ShowDetailViewInterface {
    
    func showShowDetail(forShow show: ShowViewModel) {
        lblShowTitle.text = show.name
        lblShowSummary.text = show.summary
        setImageFrom(show.imagen.medium, showImage)
    }
    
    
}


