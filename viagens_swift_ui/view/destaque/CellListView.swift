//
//  CellListView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct CellListView: View {
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    var _isCompact: Bool{
        return self._horizontalSizeClass == .compact
    }
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo)
                .font(.custom("Avenir", size: _isCompact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:  _isCompact ? 125 : 300)
                .clipped()
            HStack{
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: _isCompact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: _isCompact ? 14 : 24))
            }
        }.padding(.bottom, 10)
    }
}

struct CellListView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CellListView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 800))
            CellListView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 900 , height: 900))
        }
    }
}
