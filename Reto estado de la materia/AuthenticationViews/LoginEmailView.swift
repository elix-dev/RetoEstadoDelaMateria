//
//  loginEmailView.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 6/05/22.
//

import SwiftUI

struct LoginEmailView: View {
    @State var textFieldEmail: String = ""
    @State var textFieldPassword: String = ""
    
    
    var body: some View {
        VStack{
            DismissView()
                .padding(.top, 8)
            Group{
                Text("Bienvenido nuevamente a la App")
                Text("Estado de la materia")
                    .bold()
                    .underline()
            }
            .padding(.horizontal)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
            .tint(.primary)
            Group{
                Text("Loguéate de nuevo para poder acceder")
                    .tint(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.top,2)
                    .padding(.bottom,2)
                TextField("Añade tu correo electronico", text: $textFieldEmail)
                TextField("Añade tu contraseña", text: $textFieldPassword)
                Button("Login"){
                    print("Login")
                }
                .padding(.top, 18)
                .buttonStyle(.bordered)
                .tint(.blue)
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal, 64)
            Spacer()
        }
    }
}

struct LoginEmailView_Previews: PreviewProvider {
    static var previews: some View {
        LoginEmailView()
            .preferredColorScheme(.dark)
    }
}
