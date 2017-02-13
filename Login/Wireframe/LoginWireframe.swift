//
//  LoginLoginWireframe.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

class LoginWireFrame: LoginWireFrameProtocol
{
    class func presentLoginModule(fromView view: LoginViewProtocol)
    {
        // Generating module components
        let view: LoginViewProtocol = view
        let presenter: LoginPresenterProtocol & LoginInteractorOutputProtocol = LoginPresenter()
        let interactor: LoginInteractorInputProtocol = LoginInteractor()
        let APIDataManager: LoginAPIDataManagerInputProtocol = LoginAPIDataManager()
        let localDataManager: LoginLocalDataManagerInputProtocol = LoginLocalDataManager()
        let wireframe: LoginWireFrameProtocol = LoginWireFrame()

        // Connecting
        view.presenter = presenter
        presenter.view =  view
        presenter.wireframe = wireframe
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDataManager = localDataManager
    }
}
