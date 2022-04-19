//
//  PresentScreen.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 17/04/22.
//

import SwiftUI


struct PresentScreen: View{
    
    @Environment(\.presentationMode) var presentation
    
    var data: String = ""
    var delegate: BindingScreen?
    
        
    var body: some View {
        VStack{
           Text("\(data)").padding()
            Button(action: ({
                delegate?.onRecieved(value: "PDP Online")
                presentation.wrappedValue.dismiss()
                
            }), label: {
                Text("Back to Home")
            })
            
            
        }
        .navigationTitle("Present")
    }
}

struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}
