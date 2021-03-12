//
//  InfoView.swift
//  VisionFaceTrack
//
//  Created by Keeley Litzenberger on 2021-03-12.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    @Binding var showInfo: Bool
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                // Gridviews for thumbnails
            }
            .navigationBarTitle(Text("Info"), displayMode: .large)
            .navigationBarItems(trailing:
                Button(action: {
                    self.showInfo.toggle()
                }) {
                    Text("Done").bold()
                })
        }
    }
}
