//
//  StarterScreen.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 10/08/22.
//

import SwiftUI

struct StarterScreen: View {
    
    @State var status = UserDefaults.standard.value(forKey: "userid") as? Bool ?? false
    
    var body: some View {
        
        VStack{
            if self.status{
                HomeScreen()
            }else{
                SignIn()
            }
        }
        .onAppear{
            let forname = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forname, object: nil, queue: .main) { (_) in 
                print("Call Notification Center")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
            }
        }
        
    }


struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
