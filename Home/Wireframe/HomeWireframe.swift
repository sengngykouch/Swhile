//
//  HomeHomeWireframe.swift
//  Swhile
//
//  Created by Sengngy on 30/01/2017.
//  Copyright © 2017 Swhile. All rights reserved.
//

import Foundation

class HomeWireFrame: HomeWireFrameProtocol
{
    class func presentHomeModule(fromView view: HomeViewProtocol)
    {
        // Generating module components
        let view: HomeViewProtocol = view
        let presenter: HomePresenterProtocol & HomeInteractorOutputProtocol = HomePresenter()
        let interactor: HomeInteractorInputProtocol = HomeInteractor()
        let APIDataManager: HomeAPIDataManagerInputProtocol = HomeAPIDataManager()
        let localDataManager: HomeLocalDataManagerInputProtocol = HomeLocalDataManager()
        let wireframe: HomeWireFrameProtocol = HomeWireFrame()

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
