//
//  ContentView.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 12/04/22.
//

import SwiftUI

struct ContentView: View, BindingScreen {
   
    @State var showScreen = false
    @State var data = "No data"
    

    func onRecieved(value: String){
        print(value)
        data = value
    }
    
    var body: some View {
       
        NavigationView{
            
            VStack{
                Text("\(data)").padding()
                
                Button(action: ({
                    showScreen.toggle()
                }), label: {
                    Text("Present")
                }).sheet(isPresented: $showScreen, content: {
                    PresentScreen(data: "PDP", delegate: self)
                }).padding()
                    .navigationBarTitle("Home", displayMode: .inline)
                    .navigationBarItems(
                        leading: Image(systemName: "trash.fill"),
                        trailing: Image(systemName: "camera.fill"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
