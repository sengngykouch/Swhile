//
//  ProfileProfileProtocols.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

protocol ProfileViewProtocol: class
{
    var presenter: ProfilePresenterProtocol? { get set }
    /**
    * Add here are the methods for communication PRESENTER -> VIEW
    */
}

protocol ProfileWireFrameProtocol: class
{
    static func presentProfileModule(fromView view: ProfileViewProtocol)
    /**
    * Add here are the methods for communication PRESENTER -> WIREFRAME
    */
}

protocol ProfilePresenterProtocol: class
{
    var view: ProfileViewProtocol? { get set }
    var interactor: ProfileInteractorInputProtocol? { get set }
    var wireframe: ProfileWireFrameProtocol? { get set }
    /**
    * Add here are the methods for communication VIEW -> PRESENTER
    */
}

protocol ProfileInteractorOutputProtocol: class
{
    /**
    * Add here are the methods for communication INTERACTOR -> PRESENTER
    */
}

protocol ProfileInteractorInputProtocol: class
{
    var presenter: ProfileInteractorOutputProtocol? { get set }
    var APIDataManager: ProfileAPIDataManagerInputProtocol? { get set }
    var localDataManager: ProfileLocalDataManagerInputProtocol? { get set }

    /**
    * Add here the methods for communications PRESENTER -> INTERACTOR
    */
}

protocol ProfileDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol ProfileAPIDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol ProfileLocalDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}

