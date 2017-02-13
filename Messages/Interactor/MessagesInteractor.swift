//
//  MessagesMessagesInteractor.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

import Foundation

class MessagesInteractor: MessagesInteractorInputProtocol 
{
    weak var presenter: MessagesInteractorOutputProtocol?
    var APIDataManager: MessagesAPIDataManagerInputProtocol?
    var localDataManager: MessagesLocalDataManagerInputProtocol?

    init() {}
}
