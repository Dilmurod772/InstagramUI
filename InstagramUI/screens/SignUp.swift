//
//  SignUp.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 09/08/22.
//

import SwiftUI

struct SignUp: View {
    @Environment(\.presentationMode) var presentation
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var userpw = ""
    
    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            TextField("Firstname", text: $firstname).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            TextField("Lastname", text: $lastname).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            TextField("Email", text: $email).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            TextField("Address", text: $address).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("Password", text: $userpw).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign Up").foregroundColor(Color.white)
                    Spacer()
                }
            }).frame(height: 45)
                .background(Color.red)
                .cornerRadius(20)
            
            Spacer()
            
            HStack{
                Text("Already have an account?").foregroundColor(.blue)
                Button("Sign In"){
                    presentation.wrappedValue.dismiss()
                }.foregroundColor(.blue)
                    .font(.system(size: 18))
            }
            
        }.padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
