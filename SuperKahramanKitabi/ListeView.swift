//
//  ContentView.swift
//  SuperKahramanKitabi
//
//  Created by Muhammed Gül on 27.10.2022.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List(superKahramanDizisi) {
                superKahraman in
                NavigationLink(destination: DetayView(secilenKahraman: superKahraman), label: {
                   ListeRowView(superkahraman: superKahraman)
                })
            }.navigationTitle("Süper Kahraman Kitabı")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
