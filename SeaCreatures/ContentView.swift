//
//  ContentView.swift
//  SeaCreatures
//
//  Created by Christian Manzaraz on 02/05/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    private var seaCreatures = [
            SeaCreature(name: "Clam", nodelName: "ClamScene"),
            SeaCreature(name: "Fish", nodelName: "FishScene"),
            SeaCreature(name: "Slug", nodelName: "SlugScene"),
            SeaCreature(name: "Starfish", nodelName: "StarfishScene")
    ]
    
    var body: some View {
        VStack {
            Model3D(named: "SlugScene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
