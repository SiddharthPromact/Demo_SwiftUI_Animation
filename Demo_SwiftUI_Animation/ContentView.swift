//
//  ContentView.swift
//  Demo_SwiftUI_Animation
//
//  Created by Siddhath Shah on 20/12/19.
//  Copyright © 2019 Siddhath Shah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // 1.
    @State private var startAnimation: Bool = false
    
    var body: some View {
        VStack {
            // 2.
            Button("Start Animation") {
                withAnimation(.easeInOut(duration: 4)) {
                    self.startAnimation.toggle()
                }
            }
            
            HStack {
                Spacer()
                // 3.
                Text("🚚")
                    .font(.custom("Arial", size: 100))
                    // 4.
                    .offset(x: self.startAnimation ? 0 - UIScreen.main.bounds.width + 100: 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
