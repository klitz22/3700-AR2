//
//  ControlView.swift
//  VisionFaceTrack
//
//  Created by Keeley Litzenberger on 2021-03-09.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct ControlView: View {
    @Binding var isControlsVisible: Bool
    
    var body: some View {
        VStack {
        
            ControlVisibilityToggleButton(isControlsVisible: $isControlsVisible)
        
            Spacer()
        
            if isControlsVisible{
                ControlButtonBar()
            }
        }
    }
}

struct ControlVisibilityToggleButton: View {
    @Binding var isControlsVisible: Bool
    
    var body: some View {
        HStack{
            
            Spacer()
            
            ZStack{
                
                Color.black.opacity(0.25)
                
                Button(action: {
                    print("Control visibility toggle pressed.")
                    self.isControlsVisible.toggle()
                }){
                    Image(systemName: self.isControlsVisible ? "rectangle" : "slider.horizontal.below.rectangle")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            .frame(width:50, height: 50)
            .cornerRadius(8.0)
        }
        .padding(.top, 45)
        .padding(.trailing, 20)
    }
}

struct ControlButtonBar: View {
    var body: some View{
        HStack{
            
            ControllButton(systemIconName: "speaker.slash") {
                print("Left Button Pressed")
            }
            
            Spacer()
            
            ControllButton(systemIconName: "info.circle") {
                print("Info Button Pressed")
            }
            Spacer()
            
                ControllButton(systemIconName: "gear") {
                    print("Right Button Pressed")
            }
        }
        .frame(maxWidth: 500)
        .padding(30)
        .background(Color.black.opacity(0.25))
    }
}

struct ControllButton: View {
    
    let systemIconName: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: {
            self.action()
        }){
            Image(systemName: systemIconName)
                .font(.system(size: 35))
                .foregroundColor(.white)
                .buttonStyle(PlainButtonStyle())
        }
        .frame(width: 50, height: 50)
        
    }
}
