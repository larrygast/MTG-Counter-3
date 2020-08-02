//
//  SwiftUIView.swift
//  MTG Counter 3
//
//  Created by Larry Gast on 7/24/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI
import Combine

struct SwiftUIView: View {
        @ObservedObject var userData = UserData()
var body: some View {
  
    
//background
    ZStack{
        if userData.joshTap == true && userData.vanPress == false {
                            Image("josh")
                                                  //imageResizing
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .blur(radius: 1.0)
                                 
        } else if userData.joshTap == true && userData.vanPress == true {
            Image("josh")
                                                             //imageResizing
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 9.0)
                
                            //chuck
        }; if userData.chuckTap == true && userData.vanPress == false {
                            Image("chuck")
                                                  //imageResizing
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                .blur(radius: 1.0)
                                
        } else if userData.chuckTap == true && userData.vanPress == true {
            Image("chuck")
                                                             //imageResizing
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 9.0)
                
                //larry
        }; if userData.larryTap == true && userData.vanPress == false {
                            Image("larry")
                                                  //imageResizing
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .blur(radius: 1.0)
        } else if userData.larryTap == true && userData.vanPress == true {
            Image("larry")
                                                             //imageResizing
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 9.0)
                
                            //chuck
        }; if userData.jaredTap == true && userData.vanPress == false {
                            Image("jared")
                                                  //imageResizing
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .blur(radius: 1.0)
        } else if userData.jaredTap == true && userData.vanPress == true {
            Image("jared")
                                                             //imageResizing
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 9.0)
                
                            //chuck
        }; if userData.mikeTap == true && userData.vanPress == false {
                            Image("mike")
                                                  //imageResizing
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .blur(radius: 1.0)
                   } else if userData.mikeTap == true && userData.vanPress == true {
                       Image("mike")
                                                                        //imageResizing
                                   .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .blur(radius: 9.0)
                           
                                       //chuck
        }; if userData.passive == true && userData.vanPress == false {
                            Image("test")
                                                                 //imageResizing
                                .resizable()
                                 .aspectRatio(contentMode: .fill)
                                 .blur(radius: 1.0)
        } else if userData.passive == true && userData.vanPress == true {
            Image("test")
                                                             //imageResizing
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 9.0)
                
                            //chuck
        };
        
        //guy easter egg
        if userData.vanPressCounter > 12 {
            HStack{
                 Image("guy")
                 .renderingMode(.original)
                 .resizable()
                 .frame(width: 120, height: 100)
                 .padding(.bottom, 15)
                 .shadow(radius: 10)
             }
        .offset(x: -130, y: -190)
        }
        //End Guy Easter Egg
        
        //sequenceEasterEggStart
        if userData.correctSequenceCounter == 5 {
            
        VStack{
           
            Button(action: {
                UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=Weyi3Ou4buU")!)
            }) {
                
                HStack {
                    Image(systemName: "play.fill")
                        .font(.largeTitle)
                    Text("")
                        .fontWeight(.semibold)
                        .font(.title)
                    
                }
                    
                       .foregroundColor(.white)
                        .padding()
                       .background(Color.red)
                       .cornerRadius(5)
                
            }
        }
        .offset(x: 0, y: 75)
            
        }
        
        //TamataButton
        VStack{
          
                   Button(action: {
                         

                   }){
                  
                    Image("tamata")
                   
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 100, height: 53)
                        .padding(.bottom, 15)
                        .shadow(radius: 10)
                        //TamataActions
                        .onTapGesture {
                        self.userData.vanPress.toggle()
                            self.userData.vanPressCounter += 1
                    }
                    .onLongPressGesture(minimumDuration: 0.1) {
                        self.userData.joshTap = false
                        self.userData.chuckTap = false
                        self.userData.larryTap = false
                        self.userData.jaredTap = false
                        self.userData.mikeTap = false
                        self.userData.passive = true
                        self.userData.vanPressCounter = 0
                        self.userData.correctSequenceCounter = 0
                       
                    }
                        }
                  .offset(x: 130, y: -190)
        

                    }
        
        //End Tamata Button
        
        

        
        if userData.vanPress == false {
        CounterButtonStack()
            .colorInvert()
        }
        
        //IfTamataPressed = buttons
        else {
       ZStack{
                    
                
                Rectangle()
                    .background(Color.black)
                    .opacity(0.5)
                    .border(Color.white, width: 2)
                    .frame(width: 330, height: 212)
                    .offset(x: 0, y:-50)

                    
                    
                                    
                   

                    
               

                VStack{
        //upperstack in rectangle
                    HStack{
                        
        //josh's head
                            Button(action: {
                                self.userData.joshTap = true
                                self.userData.chuckTap = false
                                self.userData.larryTap = false
                                self.userData.jaredTap = false
                                self.userData.mikeTap = false
                                self.userData.passive = false
                                
                                if self.userData.correctSequenceCounter == 0 {
                            
                                self.userData.correctSequenceCounter = 1
                                self.userData.chuckCounter = 0
                                self.userData.larryCounter = 0
                                self.userData.jaredCounter = 0
                                self.userData.mikeCounter = 0
                                }
                                print("josh tapped")
                                print("sequence: \(self.userData.correctSequenceCounter)")
                                
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
                                self.userData.chuckTap = true
                                self.userData.larryTap = false
                                self.userData.jaredTap = false
                                self.userData.mikeTap = false
                                self.userData.passive = false
                                
                               
                                print("chuck tapped")
                                
                                 //sequence nonsense
                                self.userData.chuckCounter += 1
                                //logic check
                                if self.userData.correctSequenceCounter == 1 &&
                                    self.userData.larryCounter == 0 &&
                                    self.userData.jaredCounter == 0 &&
                                    self.userData.mikeCounter == 0 {
                                    self.userData.correctSequenceCounter = 2
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } else {
                                    self.userData.correctSequenceCounter = 0
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } //endSequenceBlock
                                
                            }){
                                Image("chuck-head")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 70.0, height: 70.0)
                                                                                                    
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                    .padding(.bottom)
        //lowerstack in rectangle2
                    HStack{
                          
        //Larry's head
                            Button(action: {
                                self.userData.joshTap = false
                                self.userData.chuckTap = false
                                self.userData.larryTap = true
                                self.userData.jaredTap = false
                                self.userData.mikeTap = false
                                self.userData.passive = false
                                
                                   print("larry tapped")
                                
                                //sequence nonsense
                                self.userData.larryCounter += 1
                                //logic check
                                if self.userData.correctSequenceCounter == 2 &&
                                    self.userData.jaredCounter == 0 &&
                                    self.userData.mikeCounter == 0
                                //then do
                                {
                                    self.userData.correctSequenceCounter = 3
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } else {
                                    self.userData.correctSequenceCounter = 0
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } //endSequenceBlock
                            }){
                                  Image("larry-head")
                                  .renderingMode(.original)
                                   .resizable()
                                 .frame(width: 70.0, height: 70.0)
                                                                                             
                                        }
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        //Jared's head
                            Button(action: {
                                self.userData.joshTap = false
                                self.userData.chuckTap = false
                                self.userData.larryTap = false
                                self.userData.jaredTap = true
                                self.userData.mikeTap = false
                                self.userData.passive = false
                                            print("jared tapped")
                                
                                //sequence nonsense
                                self.userData.jaredCounter += 1
                                //logic check
                                if self.userData.correctSequenceCounter == 3 &&
                                    self.userData.mikeCounter == 0
                                //then do
                                {
                                    self.userData.correctSequenceCounter = 4
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } else {
                                    self.userData.correctSequenceCounter = 0
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } //endSequenceBlock
                                        }){
                                            Image("jared-head")
                                            .renderingMode(.original)
                                            .resizable()
                                            .frame(width: 70.0, height: 70.0)
                                                                                                                
                                        }
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        //mike's head
                            Button(action: {
                                     self.userData.joshTap = false
                                self.userData.chuckTap = false
                                self.userData.larryTap = false
                                self.userData.jaredTap = false
                                self.userData.mikeTap = true
                                self.userData.passive = false
                                
                                    print("mike tapped")
                                
                                //sequence nonsense
                                self.userData.mikeCounter += 1
                                //logic check
                                if self.userData.correctSequenceCounter == 4
                                //then do
                                {
                                    self.userData.correctSequenceCounter = 5
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                    self.userData.vanPress = false
                                    self.userData.passive = true
                                } else {
                                    self.userData.correctSequenceCounter = 0
                                    print("sequence: \(self.userData.correctSequenceCounter)")
                                } //endSequenceBlock
                            }){
                                    Image("mike-head")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 70.0, height: 70.0)
                                                                                                         
                                             }
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        }
                    .padding(.all)
                    .offset(x: 0, y: -50)
                    }
                .padding(.bottom)
                .padding(.bottom)
                }
                }
    }
    
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
