//
//  HomeHomeInteractor.swift
//  Swhile
//
//  Created by Sengngy on 30/01/2017.
//  Copyright © 2017 Swhile. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol 
{
    weak var presenter: HomeInteractorOutputProtocol?
    var APIDataManager: HomeAPIDataManagerInputProtocol?
    var localDataManager: HomeLocalDataManagerInputProtocol?

    init() {}
}
