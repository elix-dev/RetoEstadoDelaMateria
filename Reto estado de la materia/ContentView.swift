//
//  ContentView.swift
//  Reto estado de la materia
//
//  Created by Elias José Rodriguez on 27/04/22.
//

//Hola
import SwiftUI
import Combine

struct ContentView: View {
    var body: some View {
        Items()
    }
}

struct Items: View {
    @State var temperatura = ""
    @State var unidadMedida = ""
    @State var molecula = ""
    @State var resultado = ""
    
    var body: some View {
        VStack(alignment:.leading){
            Image("img2")
                .resizable()
                .aspectRatio(contentMode:ContentMode.fit)
            Spacer()
            VStack (alignment:.leading){
                Text("Temperatura").bold()
                Text("   Ingresa tu temperatura en grados ")
                TextField("", text: $temperatura)
                    .keyboardType(.numberPad)
                    .onReceive(Just(temperatura)) { value in
                        let filtered = "\(value)".filter { "-0123456789".contains($0) }
                        if filtered != value {
                            self.temperatura = "\(filtered)"
                        }
                    }
                Divider().frame(height: 1 )
            }
            VStack (alignment:.leading){
                Text("Unidad de medida").bold()
                Text("   1. grados celsius \n   2. grados Farenheit \n   3. grados Kelvin")
                TextField("", text: $unidadMedida)
                    .keyboardType(.numberPad)
                    .onReceive(Just(unidadMedida)) { value in
                        let filtered = "\(value)".filter { "123".contains($0) }
                        if filtered != value {
                            self.unidadMedida = "\(filtered)"
                        }
                    }
                Divider().frame(height: 1 )
            }
            VStack (alignment:.leading){
                Text("Molecula").bold()
                Text("   1. Agua \n   2. Metanol   \n   3. Etanol ")
                TextField("", text: $molecula)
                    .keyboardType(.numberPad)
                    .onReceive(Just(molecula)) { value in
                        let filtered = "\(value)".filter { "123".contains($0) }
                        if filtered != value {
                            self.molecula = "\(filtered)"
                        }
                    }
                Divider().frame(height: 1 )
            }
            Spacer().frame( height:60)
            Text(resultado)
                .bold()
                .frame(maxWidth:.infinity,alignment:.center)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
            Spacer().frame( height: 20)
            Button(action:{
                resultado = Logica().respuesta(temperatura: Int(temperatura)!, unidadMedida: Int(unidadMedida)!, elemento: Int(molecula)!)
            }, label:{
                Text("Calcular")
            }).frame(maxWidth:.infinity , alignment: .center)
            Spacer().frame( height: 20)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
