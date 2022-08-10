//
//  HomeScreen.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 10/08/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        NavigationView{
            VStack{
        Button(action: {
           
            UserDefaults.standard.removeObject(forKey: "userid")
            status.listen()
            
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
