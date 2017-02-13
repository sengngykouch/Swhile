//
//  MessagesMessagesPresenter.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

class MessagesPresenter: MessagesPresenterProtocol, MessagesInteractorOutputProtocol
{
    weak var view: MessagesViewProtocol?
    var interactor: MessagesInteractorInputProtocol?
    var wireframe: MessagesWireFrameProtocol?

    init() {}
}
