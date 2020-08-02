//
//  backgroundView2.swift
//  MTG Counter 3
//
//  Created by Larry Gast on 7/24/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI

struct backgroundView2: View {
    
    @ObservedObject var userData = UserData()
    var body: some View {
            ZStack{
                     
                     if userData.joshTap2 == true {
                         Image("josh")
                                               //imageResizing
                                               .resizable()
                                               .aspectRatio(contentMode: .fill)
                                               .blur(radius: 2.0)
                }; if userData.tamataTap2 == true {
                         Image("test")
                                                              //imageResizing
                                                              .resizable()
                                                              .aspectRatio(contentMode: .fill)
                                                              .blur(radius: 2.0)
              
                 
                 }

             }
    }
}

struct backgroundView2_Previews: PreviewProvider {
    static var previews: some View {
        backgroundView2()
    }
}
