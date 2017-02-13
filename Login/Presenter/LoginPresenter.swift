//
//  LoginLoginPresenter.swift
//  Swhile
//
//  Created by ViperTest on 13/02/2017.
//  Copyright © 2017 Swhile, Inc.. All rights reserved.
//

class LoginPresenter: LoginPresenterProtocol, LoginInteractorOutputProtocol
{
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorInputProtocol?
    var wireframe: LoginWireFrameProtocol?

    init() {}
}
