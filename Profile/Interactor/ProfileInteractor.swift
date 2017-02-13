//
//  ProfileProfileInteractor.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

class ProfileInteractor: ProfileInteractorInputProtocol 
{
    weak var presenter: ProfileInteractorOutputProtocol?
    var APIDataManager: ProfileAPIDataManagerInputProtocol?
    var localDataManager: ProfileLocalDataManagerInputProtocol?

    init() {}
}
