//
//  ContentView.swift
//  VisionFaceTrack
//
//  Created by Keeley Litzenberger on 2021-03-09.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    @State private var isControlsVisible: Bool = true
    
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            ARViewContainer()
            
            ControlView(isControlsVisible: $isControlsVisible)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        return arView
        
}
    
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

