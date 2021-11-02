//
//  ContentView.swift
//  Dicee
//
//  Created by Ferdous Mahmud Akash on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("diceeLogo")
                    .padding(.top, 50)
                Spacer()
                HStack{
                    diceeImageView(diceNum: leftDiceNumber)
                    diceeImageView(diceNum: rightDiceNumber)
                }
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(Font.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                
                }
                .background(Color.red)
                .cornerRadius(10)
                .padding(.bottom)
            }
        }
    }
}

struct diceeImageView: View {
    let diceNum: Int
    
    var body: some View {
        Image("dice\(diceNum)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}


