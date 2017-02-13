//
//  LoginLoginInteractor.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorInputProtocol 
{
    weak var presenter: LoginInteractorOutputProtocol?
    var APIDataManager: LoginAPIDataManagerInputProtocol?
    var localDataManager: LoginLocalDataManagerInputProtocol?

    init() {}
}
