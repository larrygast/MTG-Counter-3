//
//  backgroundView.swift
//  MTG Counter 3
//
//  Created by Larry Gast on 7/24/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI

struct backgroundView: View {
    
    @ObservedObject var userData = UserData()

var body: some View {
         ZStack{
                 
                 if userData.joshTap == true {
                     Image("josh")
                                           //imageResizing
                                           .resizable()
                                           .aspectRatio(contentMode: .fill)
                                           .blur(radius: 2.0)
            } else if userData.tamataTap == true {
                     Image("test")
                                                          //imageResizing
                                                          .resizable()
                                                          .aspectRatio(contentMode: .fill)
                                                          .blur(radius: 2.0)
          
             
             }

         }
    }
}

struct backgroundView_Previews: PreviewProvider {
    static var previews: some View {
        backgroundView()
    }
}
