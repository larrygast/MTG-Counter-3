//
//  buttonTest.swift
//  MTGCounter2
//
//  Created by Larry Gast on 7/20/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI





struct buttonTest: View {
 
    
    @ObservedObject var userData = UserData()
    
    
var body: some View {
        
        ZStack{
            if userData.joshTap == true {
                           Image("josh")
                                                 //imageResizing
                                                 .resizable()
                                                 .aspectRatio(contentMode: .fill)
                                                 .blur(radius: 2.0)
                
                
                
            }; if userData.tamataTap == true {
                           Image("test")
                                                                //imageResizing
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fill)
                                                                .blur(radius: 2.0)
                       }
       
            
            
            
            
    HStack{
  
            //josh
        Button(action: {
            self.userData.joshTap = true
            self.userData.tamataTap = false
    })
                         {
                             Image("josh-head")
                             .renderingMode(.original)
                             .resizable()
                             .frame(width: 70.0, height: 70.0)                                                
                         }
                         .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     //Chuck's head
           Button(action: {
            self.userData.tamataTap = true
            self.userData.joshTap = false
                          })
                                               {
                                                   Image("chuck-head")
                                                   .renderingMode(.original)
                                                   .resizable()
                                                   .frame(width: 70.0, height: 70.0)
                                               }
        }
        }
}
}

struct buttonTest_Previews: PreviewProvider {
    static var previews: some View {
        buttonTest()
    }
}
