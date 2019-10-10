//
//  pruebaView.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 08/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import UIKit

class ShowListView: UIViewController {
    
    var presenter: ShowsListPresenterInterface?
    var showViewModels: [ShowViewModel] = []
    
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.notifyViewLoaded()
    }
    
}

extension ShowListView: ShowsListViewInterface {
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    func setupInitialView() {
        view.addSubview(tableView)
        tableView.register(UINib(nibName: ShowTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: ShowTableViewCell.nibName)
        tableView.separatorColor = UIColor.black
        tableView.backgroundColor = UIColor.black
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func reloadData(showViewModels: [ShowViewModel]) {
        self.showViewModels = showViewModels
        tableView.reloadData()
    }
    
}


extension ShowListView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowTableViewCell", for: indexPath) as! ShowTableViewCell
        setImageFrom(showViewModels[indexPath.row].imagen.medium, cell.showImage)
        cell.set(show: showViewModels[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showDetailShow(show: showViewModels[indexPath.row])
    }
    
}
