//
//  RegistroEmailView.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 6/05/22.
//

import SwiftUI

struct RegistroEmailView: View {
    @ObservedObject var authenticationViewModel : AuthenticationViewModel
    @State var textFieldEmail: String = ""
    @State var textFieldPassword: String = ""
    
        var body: some View {
            VStack{
                DismissView()
                    .padding(.top, 8)
                Group{
                    Text("Bienvenido a la App")
                    Text("Estado de la materia")
                        .bold()
                        .underline()
                }
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .tint(.primary)
                Group{
                    Text("Registrate para poder acceder")
                        .tint(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.top,2)
                        .padding(.bottom,2)
                    TextField("Añade tu correo electronico", text: $textFieldEmail)
                    TextField("Añade tu contraseña", text: $textFieldPassword)
                    Button("Aceptar"){
                        authenticationViewModel.createNiewUser(email: textFieldEmail,
                                                               password: textFieldPassword)
                        }
                    
                    .padding(.top, 18)
                    .buttonStyle(.bordered)
                    .tint(.blue)
                if let messageError = authenticationViewModel.messageError{
                    Text(messageError)
                        .bold()
                        .font(.body)
                        .foregroundColor(.red)
                        .padding(.top, 20)
                }
                    
                }
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 64)
                Spacer()
            }
        }
    


struct RegistroEmailView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroEmailView(authenticationViewModel: AuthenticationViewModel())
    }
}
}
