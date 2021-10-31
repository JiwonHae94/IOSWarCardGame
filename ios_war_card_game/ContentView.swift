//
//  ContentView.swift
//  ios_war_card_game
//
//  Created by Jiwon_Hae on 2021/11/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                Spacer()
                Image("dealbutton")
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.white)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.white)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
