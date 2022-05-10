//
//  AuthenticationViewModel.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 10/05/22.
//

import Foundation

final class AuthenticationViewModel: ObservableObject {
    @Published var user: User?
    @Published var messageError: String?
    
    
    private let authenticationRepository: AuthenticationRepository
    
    init (authenticationRepository: AuthenticationRepository = AuthenticationRepository()) {
        self.authenticationRepository = authenticationRepository
    }
    func createNiewUser(email: String, password: String){
    authenticationRepository.createNewUser(email: email,
                                           password: password) { [weak self] result in
        switch result {
        case .success(let user):
            self?.user = user
        case .failure(let error):
            self?.messageError = error.localizedDescription
        }
    }
}
}
