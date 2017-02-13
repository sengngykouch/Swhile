//
//  ProfileProfilePresenter.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

class ProfilePresenter: ProfilePresenterProtocol, ProfileInteractorOutputProtocol
{
    weak var view: ProfileViewProtocol?
    var interactor: ProfileInteractorInputProtocol?
    var wireframe: ProfileWireFrameProtocol?

    init() {}
}
