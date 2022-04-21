//
//  ContentView.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var half = false
       @State private var dim = false
       
   
    
    var body: some View {
        Image("tower")
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0))
            .onTapGesture {
                self.dim.toggle()
                self.half.toggle()
            }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
