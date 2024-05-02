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
    @State private var selectedCreature: SeaCreature?
    
    private var seaCreatures = [
            SeaCreature(name: "Clam", nodelName: "ClamScene"),
            SeaCreature(name: "Fish", nodelName: "FishScene"),
            SeaCreature(name: "Slug", nodelName: "SlugScene"),
            SeaCreature(name: "Starfish", nodelName: "StarfishScene")
    ]
    
    var body: some View {
        NavigationSplitView {
            List(seaCreatures) { creature in
                Button {
                    selectedCreature = creature
                } label: {
                    Text(creature.name)
                }

            }
            .navigationTitle("Sea Creatures")
        } detail: {
            if let selectedCreature {
                Model3D(named: selectedCreature.nodelName, bundle: realityKitContentBundle)
                    .navigationTitle(selectedCreature.name)
                    .toolbar {
                        Button {
                            
                        } label: {
                            Text("View \(selectedCreature.name)")
                        }

                    }
            } else {
                Text("Select a sea creature")
            }
        }

    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
