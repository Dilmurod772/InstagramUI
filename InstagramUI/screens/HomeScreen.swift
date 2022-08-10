//
//  HomeScreen.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 10/08/22.
//

import SwiftUI

struct HomeScreen: View {
    
    
    
    var body: some View {
        
        NavigationView{
            VStack{
        Button(action: {
            UserDefaults.standard.set(false, forKey: "status")
            NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
           
            
        }, label: {
            Text("Log Out")
        })
        }
        .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
        .navigationBarTitle("Home", displayMode: .inline)
    }
   }
 }

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
