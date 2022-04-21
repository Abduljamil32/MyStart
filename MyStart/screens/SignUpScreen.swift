//
//  SignUpScreen.swift
//  MyStart
//
//  Created by Avaz Mukhitdinov on 21/04/22.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var firstname: String = ""
    @State var secondname: String = ""
    @State var email: String = ""
    @State var address: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                TextField("Firstname", text: $firstname)
                    .frame(height: 50).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                TextField("Secondname", text: $secondname)
                    .frame(height: 50).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                TextField("Email", text: $email)
                    .frame(height: 50).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                TextField("Address", text: $address)
                    .frame(height: 50).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                SecureField("Password", text: $password)
                    .frame(height: 50).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(100)
                
                Button(action: {
                    
                }, label: {
                    HStack{
                        Spacer()
                        Text("Sign Up").foregroundColor(.white)
                        Spacer()
                    }
                })
                .frame(height: 50)
                .background(.red).cornerRadius(100)
                Spacer()
                
                HStack{
                    Text("Already have an account?").foregroundColor(.blue)
                    Button("Sign In"){
                        presentation.wrappedValue.dismiss()
                    }
                    .font(.system(size: 19))
                }
            }.padding()
                .navigationBarTitle("Sign Up", displayMode: .inline)
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
