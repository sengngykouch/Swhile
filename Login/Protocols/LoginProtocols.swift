//
//  LoginLoginProtocols.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: class
{
    var presenter: LoginPresenterProtocol? { get set }
    /**
    * Add here are the methods for communication PRESENTER -> VIEW
    */
}

protocol LoginWireFrameProtocol: class
{
    static func presentLoginModule(fromView view: LoginViewProtocol)
    /**
    * Add here are the methods for communication PRESENTER -> WIREFRAME
    */
}

protocol LoginPresenterProtocol: class
{
    var view: LoginViewProtocol? { get set }
    var interactor: LoginInteractorInputProtocol? { get set }
    var wireframe: LoginWireFrameProtocol? { get set }
    /**
    * Add here are the methods for communication VIEW -> PRESENTER
    */
}

protocol LoginInteractorOutputProtocol: class
{
    /**
    * Add here are the methods for communication INTERACTOR -> PRESENTER
    */
}

protocol LoginInteractorInputProtocol: class
{
    var presenter: LoginInteractorOutputProtocol? { get set }
    var APIDataManager: LoginAPIDataManagerInputProtocol? { get set }
    var localDataManager: LoginLocalDataManagerInputProtocol? { get set }

    /**
    * Add here the methods for communications PRESENTER -> INTERACTOR
    */
}

protocol LoginDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol LoginAPIDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol LoginLocalDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}

