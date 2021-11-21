//
//  ContentView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            GeometryReader{ view in
                VStack{
                    HeaderView(width: view.size.width)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Hotéis")
                                .foregroundColor(Color.white)
                                .font(.custom("Avenir Medium", size: 17))
                        }
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .offset(x: 60)
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Pacotes")
                                .foregroundColor(Color.white)
                                .font(.custom("Avenir Medium", size: 17))
                        }.frame(width: 100, height: 50)
                        .background(Color.orange)
                        .cornerRadius(15.0)
                        .offset(x: -60)
                    }
                    .offset(y: -30)
                    
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
                    .offset(y: -30)
                }
                .edgesIgnoringSafeArea(.all)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
