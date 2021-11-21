//
//  HeaderView.swift
//  viagens_swift_ui
//
//  Created by Igor Sthaynny on 21/11/21.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        GeometryReader{ view in
            VStack{
                VStack{
                    Text("Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 26))
                        .padding(.top, 50)
                    Text("Especial")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.leading, 30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                
                BotoesHeaderView()
                .offset(y: -30)
            }
            
        }
        
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}


