//
//  DismissView.swift
//  Reto estado de la materia
//
//  Created by Elias Jose Rodriguez Indaburo on 6/05/22.
//

import SwiftUI

struct DismissView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack{
            Spacer()
            Button("Cerrar"){
                dismiss()
            }
            .tint(.black)
            .padding(.trailing, 12)
        }
        .buttonStyle(.bordered)
    }
}

struct DismissView_Previews: PreviewProvider {
    static var previews: some View {
        DismissView()
    }
}
