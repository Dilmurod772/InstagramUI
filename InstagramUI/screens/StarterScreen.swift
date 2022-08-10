//
//  StarterScreen.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 10/08/22.
//

import SwiftUI

struct StarterScreen: View {
    
    @EnvironmentObject var status: Status
    
    
    var body: some View {
        
        VStack{
            if self.status.userid != nil {
                HomeScreen()
            }else{
                SignIn()
            }
        }
        .onAppear{
            status.listen()
            }
        }
        
    }


struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
