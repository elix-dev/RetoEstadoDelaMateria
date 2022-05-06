//
//  Inicio.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 5/05/22.
//

import SwiftUI

enum AutenticacionView: String, Identifiable {
    case registro
    case login

var id: String {
    return rawValue
}
}
struct InicioView: View {
    @State private var autenticacionView: AutenticacionView?
    
    var body: some View {
      
        VStack {
            Image("LogoInicio")
                .resizable()
              .frame(width: 180, height: 200)
                .clipShape(Circle())
            
            VStack {
                Button {
                    autenticacionView = .login
                }label: {
                    Label("Entra con Email", systemImage: "envelope.fill")
                }
                .tint(.black)
            }
            .controlSize(.large)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .padding(.top, 60)
            Spacer()
            HStack {
                Button {
                    autenticacionView = .registro
                }label: {
                    Text("¿No tienes cuenta?")
                    Text("Registrate")
                }
                //.tint(.black)
            }
        }
        .sheet(item: $autenticacionView) { sheet in
            
            switch sheet {
            case .registro:
                RegistroEmailView()
            case .login:
                LoginEmailView()
            }
            
        }
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
            .preferredColorScheme(.light)
    }
}
