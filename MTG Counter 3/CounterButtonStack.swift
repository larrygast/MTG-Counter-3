//
//  CounterButtonStack.swift
//  MTGCounter2
//
//  Created by Larry Gast on 7/20/20.
//  Copyright © 2020 Larry Gast. All rights reserved.
//

import SwiftUI


  


struct CounterButtonStack: View {
    @Binding var valueFromParent : Int
  @State private var timer: Timer?
    @State var isLongPressing = false
     

    var body: some View {
                                  //counter+buttons HStack
        ZStack{
        HStack(){
                          Button(action: {
                           print("tap")
                            if(self.isLongPressing){
                                //longtapstop
                                self.isLongPressing.toggle()
                                self.timer?.invalidate()
                            
                            } else {
                                //regularTap
                                self.valueFromParent -= 1
                                
                            }
                          }, label: {
                            Image("minus.circle")
                                .colorMultiply(.black)
                                .font(.system(size: 50))
                            })
                            .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded { _ in
                                print("long press")
                                self.isLongPressing = true
                                //fastforward to Start Timer
                                self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
                                    self.valueFromParent -= 1
                                })
                            })
            
        
                            
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                      

                          
            Text("\(valueFromParent)")
                            .font(.system(size: 100))
                            .fontWeight(.medium)
                                  .colorMultiply(.black)
                            .multilineTextAlignment(.center)
                            .grayscale(/*@START_MENU_TOKEN@*/10.5/*@END_MENU_TOKEN@*/)
                        
              
                          Button(action: {
                           print("tap")
                            if(self.isLongPressing){
                                //longtapstop
                                self.isLongPressing.toggle()
                                self.timer?.invalidate()
                            
                            } else {
                                //regularTap
                                self.valueFromParent += 1
                                
                            }
                          }, label: {
                            Image("plus.circle")
                                .colorMultiply(.black)
                                .font(.system(size: 50))
                            })
                            .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded { _ in
                                print("long press")
                                self.isLongPressing = true
                                //fastforward to Start Timer
                                self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
                                    self.valueFromParent += 1
                                })
                            })
                          .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                      }
                    .offset(x: 0, y: -45)

        }
   
    }
        
}





struct CounterButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        CounterButtonStack(valueFromParent: .constant(20))
    }
}


