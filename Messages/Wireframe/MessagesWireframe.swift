//
//  MessagesMessagesWireframe.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

class MessagesWireFrame: MessagesWireFrameProtocol
{
    class func presentMessagesModule(fromView view: MessagesViewProtocol)
    {
        // Generating module components
        let view: MessagesViewProtocol = view
        let presenter: MessagesPresenterProtocol & MessagesInteractorOutputProtocol = MessagesPresenter()
        let interactor: MessagesInteractorInputProtocol = MessagesInteractor()
        let APIDataManager: MessagesAPIDataManagerInputProtocol = MessagesAPIDataManager()
        let localDataManager: MessagesLocalDataManagerInputProtocol = MessagesLocalDataManager()
        let wireframe: MessagesWireFrameProtocol = MessagesWireFrame()

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
