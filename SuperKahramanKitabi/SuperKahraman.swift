//
//  SuperKahraman.swift
//  SuperKahramanKitabi
//
//  Created by Muhammed Gül on 27.10.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperKahraman(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "İş adamı", koordinat: Koordinat(latitude: 41.8781136, longitude: -87.7382624))

let superman = SuperKahraman(isim: "Superman", gercekIsim: "Clark Kent", gorselIsmi: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.121422, longitude: -94.6618873))

let spiderman = SuperKahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.7127753, longitude: -74.0059728))

let ironman = SuperKahraman(isim: "İronman", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "Los Angeles", meslek: "İş Adamı", koordinat: Koordinat(latitude: 34.0522342, longitude: -118.2436849))

let superKahramanDizisi = [batman,superman,spiderman,ironman]
