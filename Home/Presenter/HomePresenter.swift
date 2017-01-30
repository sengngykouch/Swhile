//
//  HomeHomePresenter.swift
//  Swhile
//
//  Created by Sengngy on 30/01/2017.
//  Copyright © 2017 Swhile. All rights reserved.
//

class HomePresenter: HomePresenterProtocol, HomeInteractorOutputProtocol
{
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireframe: HomeWireFrameProtocol?

    init() {}
}
