//
//  HomeScreen.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 22/04/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.value(forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: {
                    Text("Log Out").foregroundColor(.red)
                })
            }
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "message.fill"))
            .foregroundColor(.red)
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
