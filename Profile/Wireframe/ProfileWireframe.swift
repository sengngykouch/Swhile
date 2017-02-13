//
//  ProfileProfileWireframe.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

class ProfileWireFrame: ProfileWireFrameProtocol
{
    class func presentProfileModule(fromView view: ProfileViewProtocol)
    {
        // Generating module components
        let view: ProfileViewProtocol = view
        let presenter: ProfilePresenterProtocol & ProfileInteractorOutputProtocol = ProfilePresenter()
        let interactor: ProfileInteractorInputProtocol = ProfileInteractor()
        let APIDataManager: ProfileAPIDataManagerInputProtocol = ProfileAPIDataManager()
        let localDataManager: ProfileLocalDataManagerInputProtocol = ProfileLocalDataManager()
        let wireframe: ProfileWireFrameProtocol = ProfileWireFrame()

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
