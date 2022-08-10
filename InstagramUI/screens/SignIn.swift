//
//  SignIn.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 09/08/22.
//

import SwiftUI

struct SignIn: View {
    
    @EnvironmentObject var status: Status
    @State var isModel = false
    @State var userid = ""
    @State var userpw = ""
    
    
    var body: some View {
        
        NavigationView{
        VStack{
            
            Spacer()
            Image("photo").resizable()
                .clipShape(Circle()).frame(width: 95, height: 75)
            
            TextField("User ID", text: $userid).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            SecureField("User PW", text: $userpw).frame(height: 45).padding(.leading, 10).background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            Button(action: {
                
                UserDefaults.standard.set("pdp", forKey: "userid")
                status.listen()
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign In").foregroundColor(Color.white)
                    Spacer()
                }
            }).frame(height: 45)
                .background(Color.red)
                .cornerRadius(20)
            
            Spacer()
            
            
            HStack{
                Text("Don't have an account?").foregroundColor(.blue)
                NavigationLink(destination: SignUp()){
                    Text("Sign Up")
                    .foregroundColor(.blue)
                        .font(.system(size: 19))
                }
                   
            }
        }.padding()
    }
}
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
