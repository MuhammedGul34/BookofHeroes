//
//  DetayView.swift
//  SuperKahramanKitabi
//
//  Created by Muhammed Gül on 27.10.2022.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperKahraman
    var body: some View {
        
            VStack{
                MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                    .frame(height: UIScreen.main.bounds.height * 0.45)
                    .ignoresSafeArea(.all)
                OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
                    .offset(y: UIScreen.main.bounds.height * -0.25)
                    .padding(.bottom, -30)
                
                VStack {
                    HStack{
                        Text(secilenKahraman.gorselIsmi)
                            .font(.largeTitle)
                            .foregroundColor(.red)
                        
                        
                        Spacer()
                        
                        Text(secilenKahraman.gercekIsim)
                            .font(.title)
                            .foregroundColor(.blue)
                        
                    }
                    HStack {
                        Text(secilenKahraman.sehir)
                        Spacer()
                        Text(secilenKahraman.meslek)
                    }
                }.padding()
                    .offset(y: UIScreen.main.bounds.height * -0.2)
                
                Spacer()
            
        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: spiderman)
    }
}
