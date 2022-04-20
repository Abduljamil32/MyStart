//
//  ContentView.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var play = 0
    
    var body: some View {
        VStack{
            LottieView(name: "facebook_login", play: $play)
                .frame(width: 500, height: 450)
            Button("Play"){
                self.play += 1
            }
            LottieView(name: "facebook_like", play: $play)
                .frame(width: 400, height: 400)
            Button("Play"){
                self.play += 1
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
