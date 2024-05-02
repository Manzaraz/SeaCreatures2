//
//  SeaCreatureDetailView.swift
//  SeaCreatures
//
//  Created by Christian Manzaraz on 02/05/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SeaCreatureDetailView: View {
    
    let modelName: String
    
    var body: some View {
        Model3D(named: modelName, bundle: realityKitContentBundle)
    }
}

#Preview {
    SeaCreatureDetailView(modelName: "SlugScene")
}
