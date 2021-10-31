//
//  ContentView.swift
//  ios_war_card_game
//
//  Created by Jiwon_Hae on 2021/11/01.
//

import SwiftUI

struct ContentView: View {
    // @State property can be changed by the view and the update
    // applied to the @State property is updated on the ui
    @State private var playerCard = Int.random(in: 2...14)
    @State private var cpuCard = Int.random(in: 2...14)
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image("card\(playerCard)")
                    Spacer()
                    Image("card\(cpuCard)")
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    // Generate a random number between 2 and 14 and update both the player and cpu cards
                    playerCard = Int.random(in: 2...14)
                    cpuCard = Int.random(in: 2...14)
                    
                    // Update scores according to the generated score
                    if playerCard > cpuCard{
                        playerScore += 1
                    } else if playerCard < cpuCard{
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
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
