//
//  HomeHomeProtocols.swift
//  Swhile
//
//  Created by Sengngy on 30/01/2017.
//  Copyright © 2017 Swhile. All rights reserved.
//

import Foundation

protocol HomeViewProtocol: class
{
    var presenter: HomePresenterProtocol? { get set }
    /**
    * Add here are the methods for communication PRESENTER -> VIEW
    */
}

protocol HomeWireFrameProtocol: class
{
    static func presentHomeModule(fromView view: HomeViewProtocol)
    /**
    * Add here are the methods for communication PRESENTER -> WIREFRAME
    */
}

protocol HomePresenterProtocol: class
{
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? { get set }
    var wireframe: HomeWireFrameProtocol? { get set }
    /**
    * Add here are the methods for communication VIEW -> PRESENTER
    */
}

protocol HomeInteractorOutputProtocol: class
{
    /**
    * Add here are the methods for communication INTERACTOR -> PRESENTER
    */
}

protocol HomeInteractorInputProtocol: class
{
    var presenter: HomeInteractorOutputProtocol? { get set }
    var APIDataManager: HomeAPIDataManagerInputProtocol? { get set }
    var localDataManager: HomeLocalDataManagerInputProtocol? { get set }

    /**
    * Add here the methods for communications PRESENTER -> INTERACTOR
    */
}

protocol HomeDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol HomeAPIDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol HomeLocalDataManagerInputProtocol: class
{
    /**
    * Add here the methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}

