//
//  ContentView.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 12/04/22.
//

import SwiftUI



struct ContentView: View {
   
    @State var showingAlert: Bool = false
    
    @State var isSheet: Bool = false
    
    var actionSheet: ActionSheet{
        let title = "IOS"
        let message = "Here we go"
        
        return ActionSheet(title: Text(title), message: Text(message),
                           buttons: [
                            .default(Text("YES"), action: {
                                
                            }),
                            .destructive(Text("NO"), action: {
                                
                            })
                           ])
    }
    
    var body: some View {
       
        TabView{
//            MARK: -- Alert Tab
            Button(action: {
                self.showingAlert = true
            }, label: {
                Text("Alert Dialog")
                    .font(.title)
                
            }).alert(isPresented: $showingAlert, content: {
                let title = "IOS"
                let message = "Here we go"
                return Alert(title: Text(title), message: Text(message), primaryButton: .destructive(Text("NO")){
                        print("1")
                }, secondaryButton: .default(Text("YES")){
                    print("2")
                })
            })
//            MARK: -- Action Sheet Tab
            .tabItem{
                Image(systemName: "circle")
                Text("Alert")
            }
            Button(action: {
                self.isSheet = true
                    
            }, label: {
                Text("Action Sheet")
                    .font(.title)
            }).actionSheet(isPresented: $isSheet, content: {
                self.actionSheet
            })
            .tabItem{
                Image(systemName: "circle")
                Text("Sheet")
            }
            
        }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
