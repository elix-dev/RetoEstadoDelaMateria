//
//  AuthenticationFirebaseDataSource.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 10/05/22.
//

import Foundation
import FirebaseAuth


struct User {
    let email: String
}

final class AuthenticationFirebaseDatasource {
    func createNewuser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authDataResult, error in
            if let error = error {
                print("Error creating a new user \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }
            let email = authDataResult?.user.email ?? "No email"
            print("New user created with info \(email)")
            completionBlock(.success(.init(email: email)))
        }
    }
}
