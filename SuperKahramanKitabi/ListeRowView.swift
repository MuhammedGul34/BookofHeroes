//
//  ListeRowView.swift
//  SuperKahramanKitabi
//
//  Created by Muhammed Gül on 27.10.2022.
//

import SwiftUI

struct ListeRowView: View {
    var superkahraman : SuperKahraman
    var body: some View {
        HStack {
            Image(superkahraman.gorselIsmi).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 80, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(superkahraman.isim).font(.title)
                    .bold()
                     
                Text(superkahraman.gercekIsim)
                    .font(.title)
                    
            }
            Spacer()
        }
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superkahraman: batman)
    }
}
