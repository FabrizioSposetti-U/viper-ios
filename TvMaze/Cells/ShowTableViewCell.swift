//
//  ShowTableViewCell.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit

class ShowTableViewCell: UITableViewCell {
    
    static let nibName = "ShowTableViewCell"

    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var lblShowTitle: UILabel!
    @IBOutlet weak var lblTypeShow: UILabel!
    
    func set(show: ShowViewModel) {
        lblShowTitle.text = show.name
        lblTypeShow.text = "Type: " + "\(show.type)"
    }
    
}
