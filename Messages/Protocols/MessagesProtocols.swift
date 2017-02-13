//
//  MessagesMessagesProtocols.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

protocol MessagesViewProtocol: class
{
    var presenter: MessagesPresenterProtocol? { get set }
    /**
    * Add here are the methods for communication PRESENTER -> VIEW
    */
}

protocol MessagesWireFrameProtocol: class
{
    static func presentMessagesModule(fromView view: MessagesViewProtocol)
    /**
    * Add here are the methods for communication PRESENTER -> WIREFRAME
    */
}

protocol MessagesPresenterProtocol: class
{
    var view: MessagesViewProtocol? { get set }
    var interactor: MessagesInteractorInputProtocol? { get set }
    var wireframe: MessagesWireFrameProtocol? { get set }
    /**
    * Add here are the methods for communication VIEW -> PRESENTER
    */
}

protocol MessagesInteractorOutputProtocol: class
{
    /**
    * Add here are the methods for communication INTERACTOR -> PRESENTER
    */
}

protocol MessagesInteractorInputProtocol: class
{
    var presenter: MessagesInteractorOutputProtocol? { get set }
    var APIDataManager: MessagesAPIDataManagerInputProtocol? { get set }
    var localDataManager: MessagesLocalDataManagerInputProtocol? { get set }

    /**
    * Add here the methods for communications PRESENTER -> INTERACTOR
    */
}

protocol MessagesDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol MessagesAPIDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol MessagesLocalDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}

