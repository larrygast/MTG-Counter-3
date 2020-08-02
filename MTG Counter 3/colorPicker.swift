//
//  colorPicker.swift
//  MTG Counter 3
//
//  Created by Larry Gast on 7/24/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI

struct colorPicker: View {
    @ObservedObject var userData = UserData()
   
    var body: some View {
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
                    self.userData.joshTap = false
                    self.userData.tamataTap = true
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

struct colorPicker_Previews: PreviewProvider {
    static var previews: some View {
        colorPicker()
    }
}
