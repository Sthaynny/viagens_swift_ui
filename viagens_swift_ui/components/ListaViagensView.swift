//
//  ListaViagensView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct ListaViagensView: View {
    var body: some View {
        List(viagens){ viagem in
            VStack(alignment: .leading){
                Text(viagem.titulo)
                Image(viagem.imagem)
                    .resizable()
                    .frame(height: 125)
                HStack{
                    Text(viagem.quantidadeDeDias)
                    Spacer()
                    Text(viagem.valor)
                }
            }.padding(.bottom, 10)
        }
    }
}

struct ListaViagensView_Previews: PreviewProvider {
    static var previews: some View {
        ListaViagensView()
    }
}
