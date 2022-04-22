//
//  SignInScreens.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 21/04/22.
//

import SwiftUI

struct SignInScreen: View {
    
    @State var isSignedIn = false
    
    @State var userId: String = ""
    @State var userPw: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Image("im_user")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(100)
                TextField("User ID", text: $userId)
                    .frame(height: 55).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                
                SecureField("User PW", text: $userPw)
                    .frame(height: 55).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                
                Button(action: {
                    UserDefaults.standard.set(true, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: {
                    HStack{
                        Spacer()
                        Text("Sign In").foregroundColor(.white)
                        Spacer()
                    }
                })
                .frame(height: 55)
                .background(.red).cornerRadius(100)
                
                Spacer()
                HStack{
                    Text("Don't have an account?").foregroundColor(.blue)
                    NavigationLink(destination: SignUpScreen()){
                        Text("Sign Up").foregroundColor(.blue)
                        .font(.system(size: 19))
                    }
                    
                }
            }.padding()
                .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}


struct SignInScreens_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
