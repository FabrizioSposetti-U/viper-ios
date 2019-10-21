//
//  PersonSearchPresenter.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 16/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation

typealias PersonViewModel = (name: String, countryName: String, imagen: Image?)

class PersonSearchPresenter {
    
    weak var view: PersonSearchViewInterface?
    var interactor: PersonSearchInteractorInterface?
    var router: PersonSearchRouterInterface?
    
}


extension PersonSearchPresenter: PersonSearchPresenterInterface {
    
    func getPersons(name: String) {
        interactor?.fetchPersons(name: name)
    }
    
    func notifyViewLoaded() {
        view?.setupInitialView()
    }
    
    func personsFetched(persons: [People]) {
        var personViewModels = [PersonViewModel]()
        for person in persons {
            let personViewModel: PersonViewModel = ((person.person?.name ?? "Name not found"), (person.person?.country?.name ?? "Country not found"), (person.person?.image ?? nil))
            personViewModels.append(personViewModel)
        }
        view?.reloadData(personViewModels: personViewModels)
    }
    
    func personsFetchedFailed(withError: String) {
        print("personsFetchedFailed")
    }
    
    func showPersonDetail(person: PersonViewModel) {
        router?.presentPersonDetail(forPerson: person)
    }
    
}
