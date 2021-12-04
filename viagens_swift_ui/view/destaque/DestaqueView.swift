//
//  DestaqueView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 04/12/21.
//

import SwiftUI

struct DestaqueView: View {
    @Environment(\.horizontalSizeClass) var _horizontalSizeClass
    var _isCompact: Bool{
        return self._horizontalSizeClass == .compact
        
    }
    
    var body: some View {
        NavigationView{
            GeometryReader{ view in
                VStack{
                    HeaderView()
                        .frame(width: view.size.width, height: _isCompact ? 210 : 310, alignment: .top)
                    List(viagens){ viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")){
                            CellListView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct DestaqueView_Previews: PreviewProvider {
    static var previews: some View {
        DestaqueView()
    }
}
