//
//  AuthenticationRepository.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 10/05/22.
//

import Foundation

final class AuthenticationRepository {
    private let authenticationFirebaseDatasource: AuthenticationFirebaseDatasource
    
    init(authenticationFirebaseDatasource: AuthenticationFirebaseDatasource = AuthenticationFirebaseDatasource()) {
        self.authenticationFirebaseDatasource = authenticationFirebaseDatasource
    }
    
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void ) {
        authenticationFirebaseDatasource.createNewuser(email: email,
                                                       password: password,
                                                       completionBlock: completionBlock)
    }
}
