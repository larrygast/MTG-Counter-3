//
//  ContentView.swift
//  MTG Counter 3
//
//  Created by Larry Gast on 7/24/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var count1 = 20
    @State var count2 = 20
    
var body: some View {
    
        
        VStack {
            SwiftUIView(valueFromParent: $count1)
                .rotationEffect(.degrees(180))
            SwiftUIView(valueFromParent: $count2)
            }
    .onAppear() {
      UIApplication.shared.isIdleTimerDisabled = true
        }
    }
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
