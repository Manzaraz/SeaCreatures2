//
//  SeaCreaturesApp.swift
//  SeaCreatures
//
//  Created by Christian Manzaraz on 02/05/2024.
//

import SwiftUI

@main
struct SeaCreaturesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        WindowGroup(id: "creatureWindow", for: String.self) { $modelName in
            SeaCreatureDetailView(modelName: modelName ?? "ToyBiplane")
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.5, height: 0.5, depth: 0.5, in: .meters)
    }
}
